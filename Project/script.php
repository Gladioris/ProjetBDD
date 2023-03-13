<script>
        // Attendre que la page soit chargée
        window.onload = function() {
        // Afficher un message de débogage dans la console de votre navigateur
        console.log("Le code JavaScript pour le graphique est en train de s'exécuter !");
        };

    google.charts.load('current', {'packages':['corechart']});
    google.charts.setOnLoadCallback(function() {
        <?php
        // Création de la nouvelle table
        $newData = array();
        array_push($newData, array('Date', 'Stock'));

        foreach($data as $row) {
            $date = date('Y,m-1,d', strtotime($row['date'])); // Conversion de la date en format année, mois, jour
            $stock = intval($row['stock']); // Convertir en entier
            array_push($newData, array($date, $stock));
        }
        
        // Encodage de la nouvelle table en JSON
        $jsonData = json_encode($newData);
        ?>
        console.log(<?php print ($jsonData); ?>)
        <?php if (!empty($newData)) { ?>
            var data = google.visualization.arrayToDataTable(<?php echo $jsonData; ?>);
            
            var options = {
                title: 'Product Stock',
                hAxis: {title: 'Date',  titleTextStyle: {color: '#333'}},
                vAxis: {minValue: 0, maxValue:100}
            };

            var chart = new google.visualization.AreaChart(document.getElementById('chart_div'));
            chart.draw(data, options);
        <?php } else { ?>
            // Afficher un message d'erreur
            console.error('Pas de données disponibles pour tracer le graphique.');
        <?php } ?>
    });
</script>