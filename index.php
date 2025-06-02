<?php
require 'db.php';

// Ako je forma poslata, ubacujemo u bazu
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $sujet = $_POST['name'] ?? '';
    $texte = $_POST['text'] ?? '';

    if (!empty($sujet) && !empty($texte)) {
        $stmt = $pdo->prepare("INSERT INTO idees (sujet, texte) VALUES (?, ?)");
        $stmt->execute([$sujet, $texte]);
    }
}

// Dohvatanje svih ideja iz baze
$stmt = $pdo->query("SELECT * FROM idees ORDER BY created_at DESC");
$idees = $stmt->fetchAll();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Vos idées</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">Votre idée</h1>

    <!-- Forma -->
    <form action="" method="post">
        <div class="mb-3">
            <label for="name" class="form-label">Sujet :</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Le sujet" required>

            <label for="text" class="form-label mt-3">Votre texte :</label>
            <textarea class="form-control" id="text" name="text" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Envoyer</button>
    </form>

    <!-- Prikaz svih ideja -->
    <hr class="my-5">
    <h2 class="text-center mb-4">Mes texts </h2>

    <?php foreach ($idees as $idee): ?>
        <div class="card mb-3 shadow-sm">
            <div class="card-body">
                <h5 class="card-title text-primary">Sujet : <?= htmlspecialchars($idee['sujet']) ?></h5>
                <p class="card-text"><?= nl2br(htmlspecialchars($idee['texte'])) ?></p>
                <p class="text-muted small text-end">Soumis le <?= date('d/m/Y à H:i', strtotime($idee['created_at'])) ?></p>
            </div>
        </div>
    <?php endforeach; ?>
</div>
</body>
</html>
