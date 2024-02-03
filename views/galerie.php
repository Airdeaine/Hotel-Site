<div id="index-photos">

				<br>

				<div id="index-photos-titre">
					<label>GALERIE PHOTOS</label>
				</div>
				<br>
				<div class="barre-array-blanche"></div>
				<div class="arrow-down-blanche"></div>
				<div class="barre-array-blanche"></div>
				<br>
				<br>
				<br>
				<br>

				<div id="index-photos-galerie">
					<div class="tablerow">
            
                    <?php foreach($galerie as $photo): ?>    

		    			<a href="Fichiers/<?php echo $photo->photo; ?>" class="img-minia zoombox zgallery1"><img src="Fichiers/<?php echo $photo->photo; ?>" alt="<?php echo $photo->alt; ?>"></a>
            
                        <?php endforeach; ?>
			
                    </div>
				</div>

				<br>
				<br>
				<br>
				<br>

			</div>