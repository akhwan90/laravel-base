<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Data User</title>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
        integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
    <div class="container mt-3">
        
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="/">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">User</li>
            </ol>
        </nav>

        <div class="card">
            <div class="card-header">Tabel User</div>

            <div class="card-body">
                <a href="/user/create" class="btn btn-primary mb-2">Tambah</a>

                @if (session('notif'))
                    <div class="alert alert-info">
                        {{ session('notif') }}
                    </div>
                @endif
                
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <td>Id</td>
                            <td>Foto</td>
                            <td>Nama</td>
                            <td>Email</td>
                            <td>Jabatan</td>
                            <td>Aksi</td>
                        </tr>
                    </thead>

                    <tbody>
                        @if(count($users) > 0) 
                            @foreach ($users as $u)
                            <tr>
                                <td>{{ $u->id }}</td>
                                <td>
                                    @if(is_file('./foto/'.$u->foto))
                                        <img src="/foto/{{ $u->foto }}" class="rounded-circle" style="width: 100px">
                                    @endif
                                </td>
                                <td>{{ $u->nama_lengkap }}</td>
                                <td>{{ $u->email }}</td>
                                <td>{{ $u->level }}</td>
                                <td>
                                    <a href="/user/edit/{{ $u->id }}" class="btn btn-primary">Edit</a>
                                    <a href="/user/delete/{{ $u->id }}" class="btn btn-danger" onclick="return confirm('Anda yakin..?');">Hapus</a>
                                </td>
                            </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="6">-</td>
                            </tr>
                        @endif
                    </tbody>
                </table>

            </div>
        </div>


    </div>
    
    
</body>
</html>