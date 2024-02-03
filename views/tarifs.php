<div id="index-tarifs">

				<br>

				<div id="index-tarifs-titre">
					<label>TARIFS</label>
				</div>
				<br>
				<div class="barre-array-rouge"></div>
				<div class="arrow-down-rouge"></div>
				<div class="barre-array-rouge"></div>

				<br>
				<br>

				<div id="index-tarifs-table">

					
					<div class="tablecell-tarifs">

						<div class="table">

						<?php foreach($tarifs_chambres as $chambre): ?>    
							
							<div class="tablerow">
								<div class="index-tarifs-sous-titre"><label><?php echo mb_strtoupper($chambre['titre']); ?> </label></div>
							</div>
							<div class="tablerow">
							<?php if(($chambre['sous_titre'])!==''): ?>
							
									<div class="tablecell-gauche">
										<label class="tarifs-details"><?php echo $chambre['sous_titre']; ?></label>
									</div>
							<?php endif; ?>

									<div class="tablecell-droite">
										<label class="tarifs-details"><?php echo $chambre['tarif']; ?></label>
									</div>
							</div>

								<?php 
								foreach($chambre['options'] as $option):
								 ?>  
									<div class="tablerow">
										<div class="tablecell-gauche">
											<label class="tarifs-details">-<?php echo $option->options; ?></label>
										</div>
										<div class="tablecell-droite">
											<label class="tarifs-details"><?php echo $option->tarif; ?></label>
										</div>
									</div>

									<?php endforeach; ?>	

							<br>
							<br>
						<?php endforeach; ?>

						

					</div>
					</div>






					<div class="index-space"></div>

					<div class="tablecell-tarifs">

						<div class="table">

							<?php foreach($tarifs_supplements as $suppl): ?>   




							<div class="tablerow">
								<div class="index-tarifs-sous-titre-droit"><label><?php echo mb_strtoupper($suppl->nom); ?></label></div>
								<div class="tablecell-droite">
									<label class="tarifs-details"><?php echo $suppl->tarif; ?></label>
								</div>
							</div>

							<br>
							<br>
							<br>

							<?php endforeach; ?>

							

						</div>

					</div>


					

					<br>
					<br>
					<br>
					<br>

				</div>
			</div>