@extends('layouts.dashboard')

@section('title', 'Assignment 6')

@section('content')
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Dashboard Users</h1>
        <ol class="breadcrumb mb-4">
            <li class="breadcrumb-item active">Here list of users in database</li>
        </ol>
        {{-- Button Create User --}}
        <div class="text-end mb-2 w-100">
            <a href="{{ route('users.create') }}" class="btn btn-success" role="button">Create New
                User</a>
        </div>


        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Table Users
            </div>
            <div class="card-body">
                <table id="datatablesSimple">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($users as $user)
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $user->name }}</td>
                            <td>{{ $user->email }}</td>
                            <td>
                                <a href="{{ route('users.show', ['user' => $user->id]) }}" class="btn btn-primary"
                                    role="button">Show</a>
                                <a href="{{ route('users.edit', ['user' => $user->id]) }}" class="btn btn-warning"
                                    role="button">Edit</a>
                                <form action="{{ route('users.destroy', ['user' => $user->id]) }}" method="post"
                                    class="d-inline">
                                    @method('delete')
                                    @csrf
                                    <button class="btn btn-danger"
                                        onclick="return confirm('Are you sure want to delete this data?')">Delete</button>
                                </form>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</main>
@endsection
