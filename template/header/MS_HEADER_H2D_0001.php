<?php 
    if (!isset($_SESSION['kho'])) {
        $_SESSION['kho'] = 1;
    }
    function kho () {
        global $conn_vn;
        if (isset($_POST['xn_kho'])) {
            $kho = $_POST['kho'];
            if ($kho == 1) {
                $_SESSION['kho'] = 1;
            } else {
                $_SESSION['kho'] = 2;
            }
        }
    }
    kho();
?>
<!--MENU MOBILE-->
<link href="https://fonts.googleapis.com/css2?family=Quicksand&display=swap" rel="stylesheet">
<?php include_once DIR_MENU."MS_MENU_H2D_0002.php"; ?>

<!-- End menu mobile-->



<!--MENU DESTOP-->

<header>

    <div class="gb-header-ruouvang">
        
<!--         <div class="gb-top-header_ruouvang">

            <div class="container">

                <div class="row">

                    <div class="col-md-12 col-sm-12">
                        <div class="col-md-4 col-xs-12">
                            <div class="col-md-8 col-xs-6">
                                <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo']?>" alt=""></a>
                            </div>
                            
                            <div class="select-kho col-md-4 col-xs-6">
                                <p>
                                    Chọn kho giao hàng:
                                </p>
                                <h5 data-toggle="modal" data-target="#chon_kho">
                                    <?= $_SESSION['kho']==1 ? 'Hà Nội' : 'Hồ Chí Minh' ?> <span><i class="fa fa-caret-down" aria-hidden="true"></i></span>
                                </h5>
                            </div>
                        </div>
                        <div class="gb-top-header_ruouvang-left col-md-5 col-xs-12">
                            <form action="/search-product/0" method="post">
                                <input type="text" name="q" placeholder="Tìm kiếm">
                                <i class="fa fa-search" aria-hidden="true"></i>
                            </form>
                        </div>
                        <div class="gb-top-header_ruouvang-right col-md-3 col-xs-12">
                            <h2>
                                <?php if (!isset($_SESSION['user_id_gbvn'])) { ?>
                                <a href="/dang-ky" style="color: #000;">ĐĂNG KÝ</a> / <a href="/dang-nhap" style="color: #000;">ĐĂNG NHẬP</a> <a href="/gio-hang" style="color: #000;"><i class="fa fa-shopping-bag" aria-hidden="true"></i> <span></span>(<?= $action_product->cart() ?>)</span></a>
                            <?php } else { ?>
                                <a href="/thong-tin-tai-khoan" style="color: #000;">THÔNG TIN TÀI KHOẢN</a> <a href="/gio-hang" style="color: #000;"><i class="fa fa-shopping-bag" aria-hidden="true"></i> <span></span>(<?= $action_product->cart() ?>)</span></a>
                            <?php } ?>
                            </h2>
                        </div>
                    </div>

                    

                </div>

            </div>

        </div> -->

        <div class="gb-header-between_ruouvang sticky-menu">

            <div class="container">

                <div class="row">
                    <div class="col-md-3 col-xs-12">
                           <a href="/" title=""><img src="/images/<?= $rowConfig['web_logo']?>" alt=""></a>
                            
                           
                        </div>

                     <div class="gb-top-header_ruouvang-left col-md-3 col-xs-12">
                            <div class="hotline-header">
                                <i class="fa fa-phone" aria-hidden="true"></i><span>Hotline: <span class="orange"><?=$rowConfig['content_home3']?></span></span>
                            </div>
                        </div>   

                    <div class="col-md-6 col-sm-12">

                      

                        <?php include DIR_MENU."MS_MENU_H2D_0001.php";?>

                    
                       

                    </div>

                </div>

            </div>

        </div>

        <div class="gb-header-bottom_ruouvang sticky-menu">

            <div class="container">

            	<div class="row">

            		<div class="col-md-9">

						<?php //include DIR_MENU."MS_MENU_H2D_0001.php";?>

            		</div>

            		<div class="col-md-3">

						<?php //include DIR_SEARCH."MS_SEARCH_H2D_0002.php"; ?>

            		</div>

            	</div>               

            </div>

        </div>

    </div>

</header>



<script src="/plugin/sticky/jquery.sticky.js"></script>

<script>

    $(document).ready(function () {

        $(".sticky-menu").sticky({topSpacing:0});

    });

</script>
<script>
    function close1(){
        $('.header-notifi').css("display","none");
    }
</script>

<!-- Modal -->
  <div class="modal fade" id="chon_kho" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Vui lòng chọn khu vực bạn muốn xem tồn kho:</h4>
        </div>
        <div class="modal-body">
          <form action="" method="post">
              <div class="form-group">
                <select name="kho" class="form-control">
                    <option value="1" <?= $_SESSION['kho']==1 ? 'selected' : '' ?> >Hà Nội</option>
                    <option value="2" <?= $_SESSION['kho']==2 ? 'selected' : '' ?> >Hồ Chí Minh</option>
                </select>
              </div>
              
              <button type="submit" name="xn_kho" class="btn btn-danger">Xác nhận</button>
            </form>
        </div>
        
      </div>
      
    </div>
  </div>