<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800">My Profile</h1>

    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <div class="card mb-3" style="max-width: 540px;">
                    <div class="row g-0">
                        <div class="col-md-4">
                            <img src="<?= base_url('/img/' . $user->user_image) ?>" class="img-fluid rounded-start" alt="<?= $user->username; ?>">
                        </div>
                        <div class="col-md-8">
                            <div class="card-body">
                                <ul class="list-group list-group-flush">
                                    <li class="list-group-item"><?= $user->fullname; ?></li>
                                    <li class="list-group-item"><?= $user->email; ?></li>
                                    <li class="list-group-item">
                                        <?php if ($user->name == "admin") { ?>
                                            <span class="badge badge-success"><?= $user->name; ?></span>
                                        <?php } else if ($user->name == "kasir") { ?>
                                            <span class="badge badge-warning"><?= $user->name; ?></span>
                                        <?php } ?>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

</div>

<?= $this->endSection(); ?>