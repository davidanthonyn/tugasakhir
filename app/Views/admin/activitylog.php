<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
    <!-- Begin Page Content -->
    <!--
    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
        For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>
        -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Login Activity</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>

                        <tr>
                            <th>#</th>
                            <th>Email</th>
                            <th>Date</th>
                            <th>Success</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Email</th>
                            <th>Date</th>
                            <th>Success</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php if ($auth_logins) : ?>
                            <?php $i = 1; ?>
                            <?php foreach ($auth_logins as $auth) : ?>
                                <tr>
                                    <td><?= $i++; ?></td>
                                    <td><?= $auth['email']; ?></td>
                                    <td><?= $auth['date']; ?></td>
                                    <?php if ($auth['success'] == '1') { ?>
                                        <td>Berhasil</td>
                                    <?php } else if ($auth['success'] == '0') { ?>
                                        <td>Gagal</td>
                                    <?php } ?>
                                </tr>
                            <?php endforeach; ?>
                        <?php endif; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>


    <!-- /.container-fluid -->

</div>

<?= $this->endSection(); ?>