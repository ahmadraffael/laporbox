<?php
include_once($_SERVER['DOCUMENT_ROOT'] . "/utils/functions.php");
$report_unsolved = query("SELECT  COUNT(status) as status FROM reports WHERE status = 0");
$report_solved = query("SELECT COUNT(status) as status FROM reports WHERE status = 1");

?>

<div class="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-2 gap-4 mb-4">
    <div class="border-2 rounded-lg border-gray-300 dark:border-gray-100 h-32 md:h-64">
        <a href="#" class="flex flex-col justify-center text-center w-full h-full bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:border-gray-100 dark:bg-[#FD7238] dark:hover:bg-[#D76130]">
            <h5 class="mb-2 text-xl md:text-7xl font-bold tracking-tight text-gray-900 dark:text-white">
                <?= $report_unsolved[0]['status'] ?>
            </h5>
            <p class="font-normal text-white text-xl">
                Laporan masuk
            </p>
        </a>
    </div>
    <div class="border-2 rounded-lg border-gray-300 dark:border-gray-100 h-32 md:h-64">
        <a href="#" class="flex flex-col justify-center text-center w-full h-full bg-white border border-gray-200 rounded-lg shadow hover:bg-gray-100 dark:bg-blue-600 dark:border-gray-100 dark:hover:bg-blue-700">
            <h5 class="mb-2 text-xl md:text-7xl font-bold tracking-tight text-gray-900 dark:text-white">
                <?= $report_solved[0]['status'] ?>
            </h5>
            <p class="font-normal text-white text-xl">
                Laporan Selesai
            </p>
        </a>
    </div>
</div>