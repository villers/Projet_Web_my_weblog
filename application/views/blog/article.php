<?php include_once(dirname(__FILE__)."/../base/header.php"); ?>

        <div class="container">

        <div class="row">


            <?php include_once(dirname(__FILE__)."/../base/menu-left.php"); ?>


            <div class="col-md-9">

                <?php echo \system\Session::getFlash(); ?>

                <div class="row">


					<div class="col-lg-12">

						<?php if(!empty($billet)): ?>

						<h1><?php echo $billet->title; ?></h1>
						<p class="lead">par <a href="#"><?php echo $billet->login; ?></a></p>
						<hr>
						<p><span class="glyphicon glyphicon-time"></span> Posté le <?php echo strftime('%d %B %G à %Hh%M', strtotime($billet->created)); ?></p>
						<hr>
						<img src="<?php echo $billet->image; ?>" class="img-responsive" alt="banner">
						<hr>

						<?php echo \system\helper\String::parseCode(htmlspecialchars($billet->content)); ?>

						<hr>

						<!-- the comment box -->
							<div class="well" id="comment">
								<h4>Leave a Comment:</h4>
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
										Image
									</button>
									<button type="button" class="btn btn-default" data-toggle="tooltip" title="" id="url">
										Link
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
								<form action="#navigationbar" role="form" method="post">
									<div class="form-group">
										<textarea id="editor" class="form-control" rows="3" name="content"></textarea>
									</div>
									<button type="submit" class="btn btn-primary">Envoyer</button>
									<input type="hidden" name="parent_id" value="0" id="parent_id"/>
	        						<input type="hidden" id="action" name="action" value="comment"/>
	        						<input type="hidden" id="id_comment" name="id_comment" value="0"/>
								</form>
							</div>
							<hr>



						<!-- the comments -->
						<div class="panel panel-default">
							<div class="panel-heading">
								<span class="glyphicon glyphicon-comment"></span>
								<h3 class="panel-title">Commentaires</h3>
								<span class="label label-info"><?php echo $count; ?></span>
							</div>
							<div class="panel-body">
								<?php foreach ($comments as $comment): ?>
									<ul class="list-group">
										<li class="list-group-item">
									    	<?php require APP.'views/blog/comment.php'; ?>
									    	<?php if(!empty($comment->replies)): ?>
										    	<div class="panel-body">
										        	<ul class="list-group">
										    			<?php foreach ($comment->replies as $comment): ?>
										    				<li class="list-group-item">
										            			<?php require APP.'views/blog/comment.php'; ?>
										            		</li>
										    			<?php endforeach ?>
										    		</ul>
										    	</div>
									    	<?php endif; ?>
									    </li>
								   	</ul>
								<?php endforeach ?>
							</div>
							<?php else: ?>
							<div class="jumbotron jumbotron-sm">
				                <div class="container">
				                    <div class="row">
				                        <div class="col-sm-12 col-lg-12">
				                            <h1>L'article n'existe pas!</h1>
				                        </div>
				                    </div>
				                </div>
				            </div>
							<?php endif; ?>
						</div>
                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- /.container -->

<?php include_once(dirname(__FILE__)."/../base/footer.php"); ?>