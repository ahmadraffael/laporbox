<?php
session_start();
if (isset($_SESSION['login'])) {
    header('Location: /index.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@sweetalert2/theme-dark@5/dark.css" />
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11/dist/sweetalert2.min.js"></script>
    <title>Document</title>
</head>


<body class=" bg-gray-200 font-sans text-gray-700">
    <div class="h-screen w-screen mx-auto flex flex-col gap-5 justify-center items-center">
        <div class="container flex flex-col justify-center items-center">
            <img src="../assets/images/logo.png " class="w-[10%]" alt="Logo" />
        </div>

        <div class="bg-white rounded-xl overflow-hidden shadow-2xl w-[23%]">
            <div class="p-6">
                <form method="POST" action="../utils/auth.php">
                    <div class="mb-4">
                        <input placeholder="Username" type="text" name="username" class="block w-full p-3 rounded-xl bg-gray-200 border border-transparent focus:outline-none">
                    </div>

                    <div class="mb-4">
                        <input placeholder="Password" type="password" name="password" class="block w-full p-3 rounded-xl bg-gray-200 border border-transparent focus:outline-none">
                    </div>

                    <button type="submit" name="login" class="w-full p-3 bg-blue-500 text-white rounded-xl shadow hover:bg-blue-600">Login</button>
                </form>
            </div>

            <?php
            if (isset($_GET['notification'])) {
                echo $_GET['notification'];
            }
            ?>
        </div>
    </div>
</body>

</html>