<?php

if (!empty($_POST)) {
    $stones = (int)$_POST['stones'];
    $beetles = (int)$_POST['beetles'];
    if ($stones <= 0 || $beetles <= 0) $message = "Введите положительное число!";
    if ($beetles > $stones) $message = "Камней меньше чем жуков!";
    if (!empty($stones) && $stones == $beetles) $message = "Все камни заполнены, тем самым 0 слева и 0 справа.";

    if (!isset($message)) {
        $line[] = $stones;
        $step = 0;
        while ($step < $beetles) {
            rsort($line);
            for ($i = 0; $i < count($line); $i++) {
                $left = $line[$i] == 0 ? 0 : floor(($line[$i] - 1) / 2);
                $right = $line[$i] == 0 ? 0 : ceil(($line[$i] - 1) / 2);
                $step++;
                if ($step == $beetles) {
                    $message = "Ответ: {$left}, {$right}";
                    break 2;
                }
                $newLine[] = $left;
                $newLine[] = $right;
            }
            if (!empty($newLine)) {
                $line = $newLine;
            }
            $newLine = [];
        }
    }
}

?>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Жуки и камни</title>
</head>
<style>
    h2 {
        text-align: center;
    }

    .form-group {
        display: inline-block;
    }
</style>
<body>
<div class="container">
    <h2>Жуки и камни</h2>
    <div class="container">
        <form method="POST" class="col-md-12">
            <div class="form-group">
                <label>Количество камней:</label>
                <input type="number" value="<?= $stones ?>" class="form-control" name="stones" required>
            </div>
            <div class="form-group">
                <label>Количество жуков:</label>
                <input type="number" value="<?= $beetles ?>" class="form-control" name="beetles" required>
            </div>
            <button type="submit" class="btn btn-success mb-1">Посчитать</button>
        </form>
        <div class="col-md-12">
            <?php if (!empty($message)): ?>
                <b>Ответ: </b><?= $message ?>
            <?php endif; ?>
        </div>
    </div>
</div>
</body>
</html>