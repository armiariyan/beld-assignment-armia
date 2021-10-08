<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />

    {{-- Style --}}
    @include('includes.styles-admin')


    <title>@yield('title')</title>
</head>

<body class="sb-nav-fixed">

    {{-- Navbar --}}
    @include('includes.navbar-admin')

    {{-- Sidebar --}}
    <div id="layoutSidenav">
        @include('includes.sidebar-admin')

        <div id="layoutSidenav_content">
            {{-- Alert --}}
            @if (session()->has('message'))
            <div class="alert alert-success alert-dismissible fade show" role="alert">
                {{ session('message') }}
                <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
            </div>
            @endif
            @yield('content')

            @include('includes.footer-admin')
        </div>
    </div>

    {{-- Script --}}
    @include('includes.scripts-admin')

</body>

</html>
