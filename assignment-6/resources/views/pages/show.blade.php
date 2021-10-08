@extends('layouts.dashboard')

@section('title', 'Assignment 6')

@section('content')
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">{{ $user->name }}'s Details</h1>
        <div class="mb-2">
            <a href="{{ route('users.index') }}" class="btn btn-success" role="button">Back to all
                Users</a>
            <a href="{{ route('users.edit', ['user' => $user->id]) }}" class="btn btn-warning" role="button">Edit</a>
            <form action="{{ route('users.destroy', ['user' => $user->id]) }}" method="post" class="d-inline">
                @method('delete')
                @csrf
                <button class="btn btn-danger"
                    onclick="return confirm('Are you sure want to delete this data?')">Delete</button>
            </form>
        </div>
        <div class="card mb-4">
            <div class="card-header">
                <i class="fas fa-table me-1"></i>
                Show Data
            </div>
            <div class="card-body">
                {{-- Form Control --}}
                <form action="" class="mb-5" method="post">
                    @method('put')
                    @csrf

                    {{-- Name --}}
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                            name="name" required readonly autofocus value="{{ old('name', $user->name) }}">
                        @error('name')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    {{-- Email --}}
                    <div class="mb-3">
                        <label for="email" class="form-label">Email</label>
                        <input type="email" class="form-control @error('email') is-invalid @enderror" id="email"
                            email="email" required readonly autofocus value="{{ old('email', $user->email) }}">
                        @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                </form>

            </div>
        </div>
    </div>
</main>
@endsection
