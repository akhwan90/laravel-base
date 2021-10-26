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
                <li class="breadcrumb-item"><a href="/user">User</a></li>
                <li class="breadcrumb-item active" aria-current="page">Tambah User</li>
            </ol>
        </nav>

        <div class="card">
            <div class="card-header">Form Tambah User</div>

            <div class="card-body">
                @if ($errors->any())
                    <div class="alert alert-danger">
                        <ul>
                            @foreach ($errors->all() as $error)
                                <li>{{ $error }}</li>
                            @endforeach
                        </ul>
                    </div>
                @endif

                @if (session('notif'))
                    <div class="alert alert-info">
                        {{ session('notif') }}
                    </div>
                @endif
                <form method="POST" action="/user/update/{{ $user->id }}" role="form" enctype="multipart/form-data">
                    @csrf
                    <div class="form-group">
                        <label for="nama_user_akun">Username</label>
                        <input id="nama_user_akun" type="text" name="nama_user_akun" class="form-control" value="{{ $user->nama_user_akun }}">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input id="password" type="text" name="password" class="form-control" value="">
                    </div>
                    <div class="form-group">
                        <label for="nama_lengkap">Nama Lengkap</label>
                        <input id="nama_lengkap" type="text" name="nama_lengkap" class="form-control" value="{{ $user->nama_lengkap }}">
                    </div>
                    <div class="form-group">
                        <label for="level">Level</label>
                        <input id="level" type="text" name="level" class="form-control" value="{{ $user->level }}">
                    </div>
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input id="email" type="email" name="email" class="form-control" value="{{ $user->email }}">
                    </div>
                    <div class="form-group">
                        <label for="foto">Foto</label>
                        <input id="foto" type="file" name="foto" class="form-control">
                    </div>
                    <div class="form-group">
                        <button class="btn btn-primary" type="submit">Simpan</button>
                    </div>

                </form>
            </div>

        </div>


    </div>
    
    
</body>
</html>