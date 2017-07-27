<section class="container-fluid">	
		<?php 	foreach ($products as $product) : ?>
			<figure class="col-md-3 col-sm-6 col-xs-12 view-first">
				<img src="http://placehold.it/400x300" alt="">
					<span class="view-info">
						<button class="btn btn-warning center-block" href="#modal-info-<?= $product['products_id'] ?>" data-toggle="modal" id="view-info">View info</button>
					</span>			
			</figure>
			<div class="modal fade" id="modal-info-<?= $product['products_id'] ?>">
			<div class="modal-dialog">
				<div class="modal-content">

					<!-- EN TÊTE DU MODAL -->
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">x</button>
						<h5 class="modal-title">Réf: <strong><?= $product['products_model']; ?></strong></h5>
					</div>

					<!-- CORPS DU MODAL -->
					<div class="modal-body">
							<section class="row col-center" >
								<!-- SLIDE DES IMAGES DU BIEN -->
								 <div class="row carousel slide" data-ride="carousel" id="carousel-<?= $product['products_id'] ?>">
									<ol class="carousel-indicators">
										<li data-target="#carousel-<?= $product['products_id'] ?>" data-slide-to="0" class="active"></li>
										<li data-target="#carousel-<?= $product['products_id'] ?>" data-slide-to="1"></li>
										<li data-target="#carousel-<?= $product['products_id'] ?>" data-slide-to="2"></li>
									</ol>
									<div class="carousel-inner">
										<div class="item active"><img src="http://placehold.it/400x300" alt="" width="100%"></div>
										<div class="item"><img src="http://placehold.it/400x300" alt="" width="100%"></div>
										<div class="item"><img src="http://placehold.it/400x300" alt="" width="100%"></div>
									</div>
									<a class="left carousel-control" href="#carousel-<?= $product['products_id'] ?>" data-slide="prev">
										<i class="glyphicon glyphicon-chevron-left"></i>
									</a>
									<a class="right carousel-control" href="#carousel-<?= $product['products_id'] ?>" data-slide="next">
										<i class="glyphicon glyphicon-chevron-right"></i>
									</a> 
								</div><!-- FIM SLIDE -->

								<!-- TITLE DU BIEN -->								
								<div class="form-inline col-md-12">
									<h3 class="form-control-static"><?= ($product['27'] == 1) ? 'Appartement' : 'Maison' ; ?> <?=  ($product['28'] == 'Vente') ? 'à vendre' : 'à louer' ; ?></h3>
									<h3 class="pull-right"><?= number_format($product['30'], 2, ',', '.');	?> €</h3><br>			
									<p class="form-control-static"> <?= substr($product['65'],5); ?></p>
								</div>

								<!-- TEXTE INFORMATIF -->
								<div class="form-inline col-md-12">
									<p class="form-control-static"><?= ($product['27'] == 1) ? 'Un appartement' : 'Une maison' ; ?> <?=  ($product['28'] == 'Vente') ? 'à vendre' : 'à louer' ; ?> de <?= $product['33'];	?> pièce(s) avec une surface de <?= substr($product['34'],0,-5); 	?>m², situé(e) à <?= substr($product['65'],5); ?></p>
								</div>
								
							</section>
						
						<!-- DIV QUI VA DISPARAÎTRE POUR AFFICHER LE FEEDBACK -->
						<div id="modal-feedback-<?= $product['products_id'] ?>">

						<!-- FORMULAIRE -->
							<form action="javascript:void(0)" method="post" id="form-<?= $product['products_id'] ?>">							
								<div id="modal-form-<?= $product['products_id'] ?>" class="collapse">
									<hr>
									<h3 class="text-center">Formulaire</h3>
									<div class="form-group">
										<input class="form-control" name="nom" id="nom" placeholder="Nom" required>
									</div>
									<div class="form-group">
										<input type="email" class="form-control" name="email" id="email" placeholder="Email" required>
									</div>
								</div>

								<!-- PIED DE PAGE DO MODAL -->
								<div class="modal-footer">
									<button type="button" class="btn btn-primary" onclick="changeButton(this, <?= $product['products_id'] ?>)" id="btn-reserve">Réserver</button>
									<button class="btn btn-info" data-dismiss="modal">Annuler</button>
								</div><!-- modal-footer -->	

							</form>
						<!-- Fim Formulario -->

						</div><!-- modal-feedback -->
						
					</div><!-- modal-body -->					
				</div><!-- modal-content -->
			</div><!-- modal-dialog -->
		</div><!-- modal fade -->
	<?php endforeach; ?>
</section>


