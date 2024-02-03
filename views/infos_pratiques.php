<div id="index-infos">
				
				<br>

				<div id="index-infos-titre">
					<label>INFOS PRATIQUES</label>
				</div>
				<br>
				<div class="barre-array-blanche"></div>
				<div class="arrow-down-blanche"></div>
				<div class="barre-array-blanche"></div>

				<br>
				<br>

				<div class="infos-table">
					<div class="infos-tablecell">

						<div class="infos-tablerow">
							<div class="infos-tablecell-picto"><img src="pics/infos/maison.png" alt="maison"></div>
							<div class="infos-tablecell-space"></div>
							<div class="infos-tablecell-picto"><label class="infos-table-titre">COORDONNÉES</label></div>
						</div>

						<br>

						<div class="infos-tablerow">
							<label class="infos-details">
								7 rue des acacias<br>
								94350 Villiers-Sur-Marne
							</label>
						</div>

						<br>

						<div class="infos-tablerow">
							<label class="infos-details">
								TÉL : 01 49 84 66 31<br>
							</label>
						</div>

						<br>

					</div>

					<div class="index-space"></div>
					
					<div class="infos-tablecell-droite">

						<div class="infos-tablerow">
							<div class="infos-tablecell-picto"><img src="pics/infos/horaires.png" alt="horaire"></div>
							<div class="infos-tablecell-space"></div>
							<div class="infos-tablecell-picto"><label class="infos-table-titre">HORAIRES</label></div>
						</div>

						<br>

						<div class="infos-tablerow">
							<label class="infos-details">
							<?php foreach($infospratiques as $horaire): ?>   
								<?php echo mb_strtoupper($horaire->horaire); ?>
								<br><br>
								<?php endforeach; ?>
							
							</label>
						</div>

						<div class="infos-tablerow">
							<img id="infos-contacthotel" src="pics/logo_une_couleur_web.png" alt="couleur">
						</div>

					</div>

				</div>

				<br>
				<br>

			</div>