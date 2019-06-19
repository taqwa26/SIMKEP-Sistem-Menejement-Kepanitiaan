<!-- Sidebar -->
<ul class="sidebar navbar-nav">
    <li class="nav-item <?php echo $this->uri->segment(2) == '' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin') ?>">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Overview</span>
        </a>
    </li>
    <li class="nav-item dropdown <?php echo $this->uri->segment(2) == 'staff' ? 'active': '' ?>">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <i class="fas fa-fw fa-users"></i>
            <span>Staff</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('admin/staff/add') ?>">New Staff</a>
            <a class="dropdown-item" href="<?php echo site_url('admin/staff') ?>">List Staff</a>
        </div>
    </li>
    <li class="nav-item dropdown <?php echo $this->uri->segment(2) == 'devisi' ? 'active': '' ?>">
        <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
            aria-expanded="false">
            <i class="fas fa-fw fa-address-book"></i>
            <span>Penanggung Jawab</span>
        </a>
        <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <a class="dropdown-item" href="<?php echo site_url('admin/devisi/add') ?>">New P. J.</a>
            <a class="dropdown-item" href="<?php echo site_url('admin/devisi') ?>">List P. J.</a>
        </div>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(2) == 'kepanitiaan' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin/kepanitiaan') ?>">
            <i class="fas fa-fw fa-boxes"></i>
            <span>Kepanitiaan</span>
        </a>
    </li>
    <li class="nav-item <?php echo $this->uri->segment(2) == 'guide' ? 'active': '' ?>">
        <a class="nav-link" href="<?php echo site_url('admin/guide') ?>">
            <i class="fas fa-fw fa-cog"></i>
            <span>Guide</span>
        </a>
    </li>
</ul>