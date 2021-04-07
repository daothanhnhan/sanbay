<script type="text/javascript">
    function load_url (id, name, price) {
        var xhttp = new XMLHttpRequest();
        xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
           // document.getElementById("demo").innerHTML = this.responseText;
           // alert(this.responseText);
           // alert('thanh cong.');
           // window.location.href = "/gio-hang";
           if (confirm('Thêm sản phẩm thành công, bạn có muốn thanh toán luôn không')) {
                  window.location = '/gio-hang';
              }else{
                  location.reload();
              }  
          }
        };
        xhttp.open("POST", "/functions/ajax-add-cart.php", true);
        xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xhttp.send("product_id="+id+"&product_name="+name+"&product_price="+price+"&product_quantity=1&action=add");
        xhttp.send();        
    }
</script>
<footer class="site-footer footer-default">
    <div class="footer-main-content_ruouvang">
        <div class="container">
            <div class="row">
                <hr>
                <div class="col-md-4 col-xs-12">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang" style="text-align: center;">
                                    <img src="/images/<?=$rowConfig['web_logo']?>" alt="">
                                    
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>
                
                <div class="col-md-4 col-xs-12">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>Thông tin liên lạc</h2>
                                    <ul>
                                        <li>Địa chỉ: <span><?=$rowConfig['content_home1']?></span></li>
                                        <li>Số điện thoai: <span><?=$rowConfig['content_home3']?></span></li>
                                        <li>Email: <span><?=$rowConfig['content_home2']?></span></li>
                                        
                                        <!-- <li><span>Skype: </span> hang.vpms</li> -->
                                    </ul>
                                  
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                <div class="col-md-4 col-xs-12">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                            <!-- <div class="widget-title-footer-ruouvang uni-uppercase footer-logo_ruouvang"><img src="/images/logo.png" alt="" class="img-responsive"></div> -->
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <<iframe src="https://www.facebook.com/plugins/page.php?href=https%3A%2F%2Fwww.facebook.com%2FXe-S%25C3%25A2n-Bay-Gia-Si%25C3%25AAu-R%25E1%25BA%25BB-103274628165484%2F&tabs=timeline&width=350&height=150&small_header=false&adapt_container_width=true&hide_cover=false&show_facepile=true&appId" width="350" height="150" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowfullscreen="true" allow="autoplay; clipboard-write; encrypted-media; picture-in-picture; web-share"></iframe>
                                    
                                </div>
                            </div>
                        </aside>
                    </div>
                </div>

                <!-- <div class="col-md-3 col-xs-6">
                    <div class="footer-main-content_ruouvang-element">
                        <aside class="widget-footer">
                           
                            <div class="widget-content">
                                <div class="footer-lienhe-ruouvang">
                                    <h2>KẾT NỐI CARNAVAL </h2>
                                    <?php //include DIR_SOCIAL."MS_SOCIAL_H2D_0002.php";?>
                                    <br>
                                    <h2>PHƯƠNG THỨC THANH TOÁN</h2>
                                    <?php //include DIR_SOCIAL."MS_SOCIAL_H2D_0003.php";?>
                                    
                                </div>
                            </div>
                        </aside>
                    </div>
                </div> -->
            </div>
        </div>
    </div>

    <div class="scrolltoTop">
        <i class="fa fa-arrow-up" aria-hidden="true"></i>
    </div>
</footer>
<script>
    

// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
  if (document.body.scrollTop > 100 || document.documentElement.scrollTop > 100) {
    $(".scrolltoTop").css("display","inline");
  } else {
     $(".scrolltoTop").css("display","none");
  }
}

// When the user clicks on the button, scroll to the top of the document
$('.scrolltoTop').on("click",function(){
      $('html, body').animate({scrollTop:0}, 'slow');
});
</script>