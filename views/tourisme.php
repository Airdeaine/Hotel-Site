<!--  Tourisme Sorties -->
<div id="tourisme-sorties">

    <br>

    <label class="tourisme-grand-titre">TOURISME</label>

    <br>
    <br>

    <div class="barre-array-rouge"></div>
    <div class="arrow-down-rouge"></div>
    <div class="barre-array-rouge"></div>

    <br>
    <br>

    <label class="tourisme-titre">SORTIES DÉTENTES</label>

    <br>
    <br>
    <br>
    <?php 

    $compteur=0;

    foreach($tourisme_sorties as $sortie):    

        $position=($compteur%2==0)?'gauche':'droite';
        $couleur=(($compteur+floor($compteur/2))%2==0)?'beige':'blanche';
 
        if($compteur%2==0) echo '<div class="tourisme-bloc-flex">';
 
    ?>


        <div class="tourisme-flex-<?php echo $couleur; ?>">
            <div class="tourisme-contenu-<?php echo $position; ?>">
                <img class="tourisme-img-<?php echo $position; ?>" src="<?php echo $sortie->photo; ?>" alt="<?php echo $sortie->titre; ?>">
                <div class="tourisme-table-<?php echo $position; ?>">
                    <div class="tourisme-cell-gauche"><label class="tourisme-sous-titre"><?php echo $sortie->titre; ?></label></div>
                    <div class="tourisme-cell-droite"><a target="_blank" href="<?php echo $sortie->lien; ?>">> SITE</a></div>
                </div>
                <label class="tourisme-label-<?php echo $position; ?>"><?php echo $sortie->description; ?></label>
            </div>
        </div>

        <?php if($compteur%2==1) echo '</div>'; ?>

        <?php $compteur++; ?>  
        
        <?php endforeach; ?>


        

    </div>

<!-- Fin Tourisme Sorties -->


<!-- Tourisme Monuments -->
<div id="tourisme-monuments">
    <div class="arrow-down-blanche-seule"></div>

    <br>

    <label class="tourisme-titre-blanc">MONUMENTS À VISITER</label>

    <br>
    <br>
 
    <?php 

    $compteur=0;

    foreach($tourisme_sorties as $monument):    
   
        $position=($compteur%2==0)?'gauche':'droite';
        $couleur=(($compteur+floor($compteur/2))%2==0)?'rougeclair':'rouge';
     
        if($compteur%2==0) echo '<div class="tourisme-bloc-flex">';
     
        ?>
   
        <div class="tourisme-flex-<?php echo $couleur; ?>">
            <div class="tourisme-contenu-<?php echo $position; ?>">
                <img class="tourisme-img-<?php echo $position; ?>" src="<?php echo $monument->photo; ?>" alt="<?php echo $monument->titre; ?>">
                <div class="tourisme-table-<?php echo $position; ?>">
                    <div class="tourisme-cell-gauche"><label class="tourisme-sous-titre-blanc"><?php echo mb_strtoupper($monument->titre); ?></label></div>
                    <div class="tourisme-cell-droite-blanc"><a target="_blank" href="<?php echo $monument->lien; ?>">> SITE</a></div>
                </div>
                <label class="tourisme-label-<?php echo $position; ?>-blanc"><?php echo mb_strtoupper($monument->description); ?></label>
            </div>
        </div>

        <?php if($compteur%2==1) echo '</div>'; ?>
       
                  
        <?php $compteur++; ?>  
        
    <?php endforeach; ?>
        
    </div>

    </div>



<!-- Fin tourisme Monuments -->



<!-- Tourisme Photo -->
<div id="tourisme-image-hotel">
	<img src="pics/tourisme/visuelbanctourisme.png" alt="">
</div>

<!-- Fin Tourisme Photo -->










