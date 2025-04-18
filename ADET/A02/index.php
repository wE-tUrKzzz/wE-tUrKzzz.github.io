<?php
$page = "aboutus";

if (isset($_GET['page'])) {
    $page = $_GET['page'];
    switch ($page) {
        case "burger":
            $page = "burger";
            break;
        case "sides":
            $page = "sides";
            break;
        case "checkout":
            $page = "checkout";
            break;
        case "aboutus":
            $page = "aboutus";
            break;
        default:
            header("Location: ?page=aboutus");
            break;
    }
} else {
    header("Location: ?page=aboutus");
}

?>

<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Burger King</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">
    <link rel="Icon" type="image/png" href="dir/img/Icon.png">
    <link rel="stylesheet" href="styles.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" />

</head>

<body>
    <nav class="navbar p-3" style="background-color: #f9f1e6;">
        <div class="container-fluid">
            <a class="navbar-brand d-flex align-items-center" href="?page=aboutus">
                <img src="dir/img/Logo.svg" style="height: 7vh;">
                <span class="h1 ms-2" style="font-family: Burger, sans-serif; color:#512315; ">Burger King</span>
            </a>
        </div>
    </nav>

    <div class="container-fluid">
        <div class="d-block d-lg-none text-end mt-3 me-3">
            <button class="btn btn-outline-dark" type="button" data-bs-toggle="collapse" data-bs-target="#sidebarMenu">
                ☰ Menu
            </button>
        </div>

        <div class="row mb-5 m-auto">
            <div class="col-12 col-lg-2 mt-2 collapse d-lg-block" id="sidebarMenu">
                <div class="card shadow d-flex flex-column"
                    style="width: 100%; height: 90vh; background-color: #f8f9fa;">
                    <ul class="list-group list-group-flush d-flex flex-column flex-grow-1"
                        style="font-size: 3vh; font-family: Burger, sans-serif;">
                        <a href="?page=burger" class="text-decoration-none">
                            <li class="list-group-item">Burgers</li>
                        </a>
                        <a href="?page=sides" class="text-decoration-none">
                            <li class="list-group-item">Sides</li>
                        </a>
                        <div class="mt-auto">
                            <a href="?page=checkout" class="text-decoration-none">
                                <li class="list-group-item">Checkout</li>
                            </a>
                            <a href="?page=aboutus" class="text-decoration-none">
                                <li class="list-group-item">About us</li>
                            </a>
                        </div>
                    </ul>
                </div>
            </div>

            <!-- Main Content -->
            <div class="col-12 col-lg-10 mt-2">
                <div class="main card shadow"
                    style="width: 100%; height: 90vh; background-color: #EFDABD; overflow-y: auto;">
                    <?php include("dir/view/" . $page . ".php"); ?>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/wow/1.1.2/wow.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>
    <script>
        new WOW().init();
    </script>
</body>

</html>