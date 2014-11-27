<?php include_once(dirname(__FILE__)."/../base/header.php"); ?>


<div class="container">
	<div class="row">

		<?php include_once(dirname(__FILE__)."/../base/menu-left.php"); ?>


		<div class="col-md-8">

			<?php echo \system\Session::getFlash(); ?>

			<div class="well" id="addpost">
				<h4>Nouveau Billet:</h4>

				<form action="<?php echo $base_url ?>admin/add_articles" role="form" method="post" id="formadmin">
					<div class="form-group">
						<label for="title" class="col-sm-2 control-label">Titre:</label>
						<div class="col-sm-10">
							<input type="text" name="title" placeholder="Title" id="title">
						</div>
					</div>
					<div class="form-group">
						<label for="title" class="col-sm-2 control-label">Image:</label>
						<div class="col-sm-10">
							<input type="text" value="http://placehold.it/640x300" id="image" name="image">
						</div>
					</div>
					<div class="form-group">
						<label for="select" class="col-sm-2 control-label">Tags:</label>
						<div class="col-sm-10">
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox1" name="php" value="php"> PHP
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox2" name="html" value="html"> HTML
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox3" name="css" value="css"> CSS
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox4" name="sql" value="sql"> SQL
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox5" name="javascript" value="javascript"> Javascript
							</label>
							<label class="checkbox-inline">
								<input type="checkbox" id="inlineCheckbox6" name="autres" value="autres"> Autres
							</label>
						</div>
					</div>
					<div class="btn-group" id="bbcode_bb_bar">
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="b">
							Bold
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="i">
							Italic
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="u">
							Underline
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="img">
							image
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="url">
							link
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="code">
							code
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="youtube">
								Youtuve
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="p">
							p
						</button>
						<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="br">
							br
						</button>
					</div>
					<div class="form-group">
						<label for="select" class="col-sm-2 control-label">Content:</label>
						<textarea id="editor" class="form-control" rows="3" name="content" placeholder="content"></textarea>
					</div>
					<input type="hidden" id="action" name="action" value="add" >
					<input type="hidden" id="id_billet" name="id_billet" value="0" >
					<button type="submit" class="btn btn-primary">Envoyer</button>
				</form>
			</div>

			<div class="panel panel-default">
				<div class="panel-heading">
					<h4 class="panel-title">Liste des articles
						<a href="#" id="addpostform"><span class="glyphicon glyphicon-plus pull-right"></span></a>
					</h4>
				</div>

				<table class="table table-hover">
					<thead>
						<tr>
							<th>#</th>
							<th>Login</th>
							<th>Titre</th>
							<th>Content</th>
							<th>tags</th>
							<th></th>
						</tr>
					</thead>
					<tbody>
						<?php foreach ($allBillet as $value): ?>
							<tr class="billet">
								<td><?php echo $value->id_billet ?></td>
								<td><?php echo $value->login ?></td>
								<td><?php echo $value->title ?></td>
								<td><?php echo \system\helper\String::truncate(\system\helper\String::stripBBCode($value->content), 0, 100, "#", "") ?></td>
								<td><?php echo $value->tags ?></td>
								<td>
									<button type="button" class="btn btn-primary btn-xs editbillet" title="Edit" data-id="<?php echo $value->id_billet ?>">
										<span class="glyphicon glyphicon-pencil"></span>
									</button>
									<button type="button" class="btn btn-danger btn-xs deletebillet" title="Delete" data-id="<?php echo $value->id_billet ?>">
										<span class="glyphicon glyphicon-trash"></span>
									</button>
								</td>
							</tr>
						<?php endforeach ?>
					</tbody>
				</table>

				<div class="text-center">
					<?php echo $pagination ?>
				</div>

			</div>


		</div>
	</div>
</div>

<?php include_once(dirname(__FILE__)."/../base/footer.php"); ?>