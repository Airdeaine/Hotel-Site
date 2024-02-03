<div id="index-hotel">
	<br>
				
	<div id="index-hotel-titre">
		<h2><label>HÔTEL</label></h2>
	</div>
				
    <br>
	
    <div class="barre-array-rouge"></div>
	<div class="arrow-down-rouge"></div>
	<div class="barre-array-rouge"></div>

	<br>
	<br>

	<div id="index-label-description-hotel">
		<h3>
			<label>
				<?php echo $hotel_texte; ?>
			</label>
		</h3>
	</div>

	<br>

	<div id="index-hotel-les-plus">
		<label>LES +</label>
	</div>

	<br>
	<br>

    <div id="index-hotel-picto">
        <?php foreach($hotel_les_plus as $lesplus): ?>
                    
            <div class="hotel-picto-img">
                <img src="<?php echo $lesplus->icone; ?>" alt="<?php echo $lesplus->alt; ?>">
            </div>

         <?php endforeach; ?>
                   
    </div>

	<br><br><br><br><br><br>


	<div id="index-hotel-adherent">
		<div id="hotel-adherent-titre">
			<label>L'HÔTEL EST ADHÉRENT</label>
		</div>
                    
        <?php foreach($hotel_adherents as $adherent): ?>
                    
            <div class="hotel-adherent-img">
				<img class="hotel-picto" src="<?php echo $adherent->icone; ?>" alt="<?php echo $adherent->alt; ?>">
			</div>
        <?php endforeach; ?>
	</div>


    <br><br><br><br>

				

</div>