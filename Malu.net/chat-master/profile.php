<?php
session_start();
include_once "php/config.php";

// Verifica si el usuario ha iniciado sesión
if (!isset($_SESSION['unique_id'])) {
    header("location: login.php");
    exit();
}

$unique_id = $_SESSION['unique_id'];

// Recuperar los detalles del usuario de la base de datos
$sql = mysqli_query($conn, "SELECT * FROM users WHERE unique_id = {$unique_id}");

if (mysqli_num_rows($sql) > 0) {
    $row = mysqli_fetch_assoc($sql);
} else {
    echo "Error al recuperar los datos del usuario.";
    exit();
}
?>

<?php include_once "header.php"; ?>

<body>
  <div class="wrapper">
    <section class="form profile">
      <header>Perfil de Usuario</header>
      <div class="user-details">
        <div class="field">
          <label>Nombre:</label>
          <span><?php echo $row['fname']; ?></span>
        </div>
        <div class="field">
          <label>Apellido:</label>
          <span><?php echo $row['lname']; ?></span>
        </div>
        <div class="field">
          <label>Edad:</label>
          <span><?php echo $row['age']; ?></span>
        </div>
        <div class="field">
          <label>Interés:</label>
          <span><?php echo $row['interest']; ?></span>
        </div>
        <div class="field">
          <label>Carrera:</label>
          <span><?php echo $row['career']; ?></span>
        </div>
        <div class="field">
          <label>Correo:</label>
          <span><?php echo $row['email']; ?></span>
        </div>
        <div class="field">
          <label>Estado:</label>
          <span><?php echo $row['status']; ?></span>
        </div>
        <div class="field">
          <label>Avatar:</label>
          <img src="images/<?php echo $row['img']; ?>" alt="Avatar">
        </div>
      </div>
      <a href="index.php" class="logout-btn">Cerrar sesión</a>
    </section>
  </div>
</body>

</html>
