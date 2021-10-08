@extends('layouts.dashboard')

@section('title', 'Assignment 6')

@section('content')
<main>
    <div class="container-fluid px-4">
        <h1 class="mt-4">Create New Data</h1>

        <div class="card mb-4">
            <div class="card-body">
                {{-- Form Control --}}
                <form action="{{ route('users.store') }}" class="mb-5" method="post">
                    {{-- @method('post') --}}
                    @csrf

                    {{-- Name --}}
                    <div class="mb-3">
                        <label for="name" class="form-label">Name</label>
                        <input type="text" class="form-control @error('name') is-invalid @enderror" id="name"
                            name="name" autofocus value="{{ old('name') }}">
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
                            name="email" autofocus value="{{ old('email') }}">

                        @error('email')
                        <div class="invalid-feedback">
                            {{ $message }}
                        </div>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-primary">Create</button>
                </form>

            </div>
        </div>
    </div>
</main>
@endsection
