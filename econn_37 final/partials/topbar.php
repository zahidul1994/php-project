<?php
require __DIR__ . '/../vendor/autoload.php';
use App\Session;
?>
<!-- header-section-starts -->
	<div class="header">
		<div class="header-top-strip">
			<div class="container">
				<div class="header-top-left">
					<ul>
                        <?php
                        if(Session::getSessionData('userloggedin')==true){
                            $userinfo = Session::getSessionData('userinfo');
                            ?>
                            <li><a href="javascript:void(0)">Welcome &nbsp; <?php echo $userinfo['username']; ?></a></li>
                            <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"> </span>Logout</a>
                            </li>
                        <?php
                            }
                        else {
                            ?>
                            <li><a href="account.php"><span class="glyphicon glyphicon-user"> </span>Login</a></li>
                            <li><a href="register.php"><span class="glyphicon glyphicon-lock"> </span>Create an Account</a>
                            </li>
                            <?php
                        }
                        ?>
					</ul>
				</div>
				<div class="header-right">
						<div class="cart box_1">
							<a href="checkout.php">
								<h3> <span class="simpleCart_total"> $0.00 </span> (<span id="simpleCart_quantity" class="simpleCart_quantity"> 0 </span>)<img src="assets/images/bag.png" alt=""></h3>
							</a>
							<p><a href="javascript:;" class="simpleCart_empty">Empty cart</a></p>
							<div class="clearfix"> </div>
						</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	<!-- header-section-ends -->