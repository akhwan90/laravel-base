<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\UserModel;

class UserController extends Controller
{
    /**
    * Display a listing of the resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function index()
    {
        
        $users = UserModel::orderByDesc('id')->get();
        
        return view('user.index', compact('users'));
    }
    
    /**
    * Show the form for creating a new resource.
    *
    * @return \Illuminate\Http\Response
    */
    public function create()
    {
        return view('user.create');
    }
    
    /**
    * Store a newly created resource in storage.
    *
    * @param  \Illuminate\Http\Request  $request
    * @return \Illuminate\Http\Response
    */
    public function store(Request $request)
    {
        //cek validasi masukan
        request()->validate(UserModel::$rules);
        
        \DB::beginTransaction();
        
        try {
            //menjalankan query builder untuk menyimpan ke tabel pegawai
            
            $file = $request->file('foto');
            if ($file) {
                $file = $request->file('foto');
                $fileName = $file->getClientOriginalName();
                $destinationPath = './foto/';
                $file->move($destinationPath, $fileName);
            } else {
                $fileName = '';
            }
            
            \DB::table('user')->insert([
                'nama_user_akun'=>$request->nama_user_akun,
                'nama_lengkap'=>$request->nama_lengkap,
                'level'=>$request->level,
                'email'=>$request->email,
                'foto'=>$fileName,
                'password'=>\password_hash($request->password, PASSWORD_DEFAULT)
                ]);
                
                //jika tidak ada kesalahan commit/simpan
                \DB::commit();
                
                // mengembalikan tampilan ke view index (halaman sebelumnya)
                return redirect('/user')->with('notif', 'Pegawai telah berhasil disimpan.');
                
            } catch (\Throwable $e) {
                //jika terjadi kesalahan batalkan semua
                \DB::rollback();
                return back()->withInput()->with('notif', 'Penyimpanan dibatalkan semua, ada kesalahan...'.$e);
            }
            //mulai transaksi
        }
        
        /**
        * Display the specified resource.
        *
        * @param  int  $id
        * @return \Illuminate\Http\Response
        */
        public function show($id)
        {
            //
        }
        
        /**
        * Show the form for editing the specified resource.
        *
        * @param  int  $id
        * @return \Illuminate\Http\Response
        */
        public function edit($id)
        {
            $user = UserModel::find($id);
            
            return view('user.edit', compact('user'));
        }
        
        /**
        * Update the specified resource in storage.
        *
        * @param  \Illuminate\Http\Request  $request
        * @param  int  $id
        * @return \Illuminate\Http\Response
        */
        public function update(Request $request, $id)
        {
            //cek validasi masukan
            request()->validate(UserModel::$rulesEdit);
            
            \DB::beginTransaction();
            
            try {
                //menjalankan query builder untuk menyimpan ke tabel pegawai
                
                $file = $request->file('foto');
                if ($file) {
                    $file = $request->file('foto');
                    $fileName = $file->getClientOriginalName();
                    $destinationPath = './foto/';
                    $file->move($destinationPath, $fileName);
                    
                    // hapus file lama 
                    $getFileFotoLama = UserModel::find($id)->foto;
                    
                    if (!empty($getFileFotoLama)) {
                        \unlink('./'.$destinationPath.'/'.$getFileFotoLama);
                    }
                    
                } else {
                    $fileName = '';
                }
                
                $updateData = [               
                    'nama_user_akun'=>$request->nama_user_akun,
                    'nama_lengkap'=>$request->nama_lengkap,
                    'level'=>$request->level,
                    'email'=>$request->email,
                    'foto'=>$fileName,
                    'password'=>\password_hash($request->password, PASSWORD_DEFAULT)
                ];
                
                if (empty($request->password)) {
                    unset($updateData['password']);
                } 
                
                \DB::table('user')->where('id',$id)->update($updateData);
                
                //jika tidak ada kesalahan commit/simpan
                \DB::commit();
                
                // mengembalikan tampilan ke view index (halaman sebelumnya)
                return redirect('/user')->with('notif', 'Pegawai telah berhasil disimpan.');
                
            } catch (\Throwable $e) {
                //jika terjadi kesalahan batalkan semua
                \DB::rollback();
                return back()->withInput()->with('notif', 'Penyimpanan dibatalkan semua, ada kesalahan...'.$e);
            }
            //mulai transaksi
        }
        
        /**
        * Remove the specified resource from storage.
        *
        * @param  int  $id
        * @return \Illuminate\Http\Response
        */
        public function destroy($id)
        {
            //mulai transaksi
            \DB::beginTransaction();
            try{
                $getFileFotoLama = UserModel::find($id)->foto;
                
                if (!empty($getFileFotoLama)) {
                    $destinationPath = './foto/';
                    \unlink($destinationPath.'/'.$getFileFotoLama);
                }

                $deleteUser = UserModel::find($id)->delete();
                
                \DB::commit();
                return redirect('/user')->with('notif', 'Pegawai telah berhasil dihapus.');
            } catch (\Throwable $e) {
                \DB::rollback();
                return redirect('/user')->with('notif', 'Pegawai gagal dihapus.'.$e);
            } 
        }
    }
    