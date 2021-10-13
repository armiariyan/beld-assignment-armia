<nav class="navbar navbar-expand-lg navbar-light bg-light mb-3 sticky-top">
    <div class="container">
        <a class="navbar-brand" href="{{ url('/') }}">Toko</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
            aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item mx-2">
                    <a class="nav-link {{ Request::is('/') ? 'active fw-bold' : '' }}" aria-current="page"
                        href="{{ url('/') }}">Home</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="#produk">Produk</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="#kategori">Kategori</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link {{ Route::is('kontak-kami') ? 'active fw-bold' : '' }}"
                        href="{{ route('kontak-kami') }}">Kontak</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link {{ Route::is('tentang-kami') ? 'active fw-bold' : '' }}"
                        href="{{ route('tentang-kami') }}">Tentang Kami</a>
                </li>
                <li class="nav-item mx-2">
                    <a class="nav-link" href="#">Login</a>
                </li>
            </ul>
        </div>
    </div>
</nav>
