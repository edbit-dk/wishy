<?php include 'app/includes/functions.php'; ?>
<?php include 'app/templates/header.php'; ?>   

<title><?php echo $app['title']; ?></title>

<?php include 'app/templates/app.php'; ?>
  </head>
  <body>


  <?php include 'app/templates/nav.php'; ?>


  <div class="pricing-header p-3 pb-md-4 mx-auto text-center">
      <h1 class="display-4 fw-normal"><?php _e('sitename') ?></h1>
      <p><?php _e('tagline') ?></p>
      <a href="<?php echo $app['url'] ?>/auth/signup"><button type="button" class="w-25 btn btn-lg btn-primary"><?php _e('signup') ?></button></a>
    </div>

<?php include 'app/templates/footer.php'; ?>    