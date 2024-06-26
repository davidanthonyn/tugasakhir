<?= $this->extend('templates/index'); ?>

<?= $this->section('page-content'); ?>

<!-- Modal -->
<div class="modal fade" id="tambahUserModal" tabindex="-1" aria-labelledby="tambahUserModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="tambahUserModalLabel">Tambah User</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label>Full Name</label> <span id="error_fullname" class="text-danger ms-3"></span>
                    <input type="text" class="form-control fullname" placeholder="Enter Full Name">
                </div>
                <div class="form-group">
                    <label>Username</label> <span id="error_username" class="text-danger ms-3"></span>
                    <input type="text" class="form-control username" placeholder="Enter Username">
                </div>
                <div class="form-group">
                    <label>Email</label> <span id="error_email" class="text-danger ms-3"></span>
                    <input type="email" class="form-control email" placeholder="Enter Email">
                </div>
                <div class="form-group">
                    <label>Password</label> <span id="error_password" class="text-danger ms-3"></span>
                    <input type="password" class="form-control password_hash" placeholder="Enter Password">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label> <span id="error_confirm" class="text-danger ms-3"></span>
                    <input type="password" class="form-control confirm_password_hash" placeholder="Enter Confirm Password">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                <button type="button" class="btn btn-primary ajaxtambahuser-save">Tambah User</button>
            </div>
        </div>
    </div>
</div>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-4 text-gray-800"><?= $title; ?></h1>
        <!-- Button trigger modal -->
        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#tambahUserModal">
            Tambah User
        </button>
    </div>
    <!-- Begin Page Content -->
    <!--
    <p class="mb-4">DataTables is a third party plugin that is used to generate the demo table below.
        For more information about DataTables, please visit the <a target="_blank" href="https://datatables.net">official DataTables documentation</a>.</p>
        -->
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>

        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                        <tr>
                            <th>#</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </thead>
                    <tfoot>
                        <tr>
                            <th>#</th>
                            <th>Username</th>
                            <th>Email</th>
                            <th>Role</th>
                            <th>Action</th>
                        </tr>
                    </tfoot>
                    <tbody>
                        <?php $i = 1; ?>
                        <?php if ($users) : ?>
                            <?php foreach ($users as $user) : ?>
                                <tr>
                                    <td><?= $i++; ?></td>
                                    <td><?= $user->username; ?></td>
                                    <td><?= $user->email; ?></td>
                                    <td><?= $user->name; ?></td>

                                    <td>
                                        <a href="<?= base_url('detailuser/' . $user->userid); ?>" class="btn btn-info">Detail</a>
                                    </td>
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

<?= $this->section('scripts'); ?>

<script>
    function datauser() {
        $.ajax({
            url: "<?= base_url('user/index') ?>",
            dataType: "json",
            success: function(response) {
                $('.viewdata').html(response.data);
            }
        })
    }
</script>

<script>
    $(document).ready(function() {
        datauser();
        $('#activityLogDataTable').DataTable();
    });

    $(document).ready(function() {

        $(document).on('click', '.ajaxtambahuser-save', function() {
            if ($.trim($('.fullname').val()).length == 0) {
                error_fullname = 'Mohon masukkan nama lengkap Anda';
                $('#error_fullname').text(error_fullname);
            } else {
                error_fullname = '';
                $('#error_fullname').text(error_fullname);
            }

            if ($.trim($('.username').val()).length == 0) {
                error_username = 'Mohon masukkan username Anda';
                $('#error_username').text(error_username);
            } else {
                error_username = '';
                $('#error_username').text(error_username);
            }

            if ($.trim($('.email').val()).length == 0) {
                error_email = 'Mohon masukkan email Anda';
                $('#error_email').text(error_email);
            } else {
                error_email = '';
                $('#error_email').text(error_email);
            }

            if ($.trim($('.password_hash').val()).length == 0) {
                error_pw = 'Mohon masukkan password Anda';
                $('#error_password').text(error_pw);
            } else {
                error_pw = '';
                $('#error_password').text(error_pw);
            }

            if ($.trim($('.confirm_password_hash').val()).length == 0) {
                error_confirm = 'Mohon masukkan confirm password Anda';
                $('#error_confirm').text(error_confirm);
            } else {
                error_confirm = '';
                $('#error_confirm').text(error_confirm);
            }

            if (error_fullname != '' || error_username != '' || error_email != '' || error_pw != '' || error_confirm != '') {
                return false;
            } else {
                var data = {
                    'fullname': $('.fullname').val(),
                    'username': $('.username').val(),
                    'email': $('.email').val(),
                    'password_hash': $('.password_hash').val(),
                };


                $.ajax({
                    method: 'POST',
                    url: "/user/tambah",
                    data: data,
                    success: function(data) {
                        $('#tambahUserModal').modal('hide');
                        $('#tambahUserModal').find('input').val('');


                        alertify.set('notifier', 'position', 'top-right');
                        alertify.success(response.status);
                    }
                });
            }
        });
    });
</script>

<?= $this->endSection(); ?>