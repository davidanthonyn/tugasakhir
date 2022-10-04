<!-- Sidebar -->
<ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

    <!-- Sidebar - Brand -->
    <a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
        <div class="sidebar-brand-icon rotate-n-15">
            <i class="fa-solid fa-prescription-bottle-medical"></i>
        </div>
        <div class="sidebar-brand-text mx-3">Apotek <sup>99</sup></div>
    </a>

    <?php if (in_groups('admin')) : ?>
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
            Menu
        </div>


        <!-- Nav Item - Home -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin'); ?>">
                <i class="fa-solid fa-arrows-h"></i>
                <span>Beranda</span></a>
        </li>

        <!-- Nav Item - Customer -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('customer'); ?>">
                <i class="fas fa-fw fa-inbox"></i>
                <span>Pelanggan</span></a>
        </li>

        <!-- Nav Item - Sales -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('sale'); ?>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Penjualan</span></a>
        </li>

        <!-- Nav Item - Sales -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('buy'); ?>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Pembelian</span></a>
        </li>

        <!-- Nav Item - Stock Management -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('stock'); ?>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Stok Manajemen</span></a>
        </li>

        <!-- Nav Item - Medicine 
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('admin'); ?>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Inventori / Obat</span></a>
        </li>
        -->

        <!-- Nav Item - Reports -->
        <li class="nav-item">
            <a class="nav-link" href="<?= base_url('report'); ?>">
                <i class="fas fa-fw fa-tachometer-alt"></i>
                <span>Laporan</span></a>
        </li>

        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
                <i class="fas fa-fw fa-cog"></i>
                <span>Pengguna</span>
            </a>
            <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">User</h6>
                    <a class="collapse-item" href="<?= base_url('user'); ?>">Profil Saya</a>
                    <a class="collapse-item" href="<?= base_url('admin/allusers'); ?>">Kelola Pengguna</a>
                    <a class="collapse-item" href="<?= base_url('admin/roles'); ?>">Role</a>
                </div>
            </div>
        </li>



        <!-- Nav Item - Pages Collapse Menu -->
        <li class="nav-item">
            <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseThree" aria-expanded="true" aria-controls="collapseThree">
                <i class="fas fa-fw fa-cog"></i>
                <span>Pengaturan</span>
            </a>
            <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionSidebar">
                <div class="bg-white py-2 collapse-inner rounded">
                    <h6 class="collapse-header">Settings</h6>
                    <a class="collapse-item" href="<?= base_url('admin/info'); ?>">Pengaturan Sistem</a>
                    <a class="collapse-item" href="<?= base_url('product/category'); ?>">Kategori Obat</a>
                    <a class="collapse-item" href="<?= base_url('product/taxes'); ?>">Pajak</a>
                    <a class="collapse-item" href="<?= base_url('payment'); ?>">Metode Pembayaran</a>
                    <a class="collapse-item" href="<?= base_url('tokopedia'); ?>">Tokopedia</a>
                    <a class="collapse-item" href="<?= base_url('shopee'); ?>">Shopee</a>
                </div>
            </div>
        </li>



    <?php endif; ?>

    <!-- Divider -->
    <hr class="sidebar-divider">

    <!-- Nav Item - Tables -->
    <li class="nav-item">
        <a class="nav-link" href="<?= base_url('logout'); ?>">
            <i class="fas fa-sign-out-alt"></i>
            <span>Logout</span></a>
    </li>

    <!-- Divider -->
    <hr class="sidebar-divider d-none d-md-block">

    <!-- Sidebar Toggler (Sidebar) -->
    <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
    </div>

</ul>
<!-- End of Sidebar -->