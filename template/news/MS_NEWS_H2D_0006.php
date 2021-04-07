<?php   

    $rows = $action->getList('news','newscat_id',2,'news_id','desc','',3,''); 
    $name = $action->getDetail('newscat','newscat_id',2);
?>
<link rel="stylesheet" href="/plugin/owl-carouse/owl.carousel.min.css">

<link rel="stylesheet" href="/plugin/owl-carouse/owl.theme.default.min.css">

<link rel="stylesheet" href="/plugin/animsition/css/animate.css">
<div class="gb-page-blog_ruouvang home_news">
    <div class="container">
        <div class="row">
            <h2><a href="/<?=$name['friendly_url']?>"><?=$name['newscat_name']?></a></h2>
            <div class="gb-slideshow_ruouvang-slide owl-carousel owl-theme">
                
                    <?php 
                    
                    foreach ($rows as $item) {
                     
                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                    ?>
                    <div class="item">
                        <div class="gb-news-slide-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                                <div class="gb-news-slide-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                  

                                </div>
                            </div>
                           
                    
                        </div>
                    </div>
                    <?php 
                   
                    } ?>
                
               
            </div>
        
        </div>
    </div>
</div>
<script src="/plugin/owl-carouse/owl.carousel.min.js"></script>

<script>

    $(document).ready(function (){

        $('.gb-slideshow_ruouvang-slide').owlCarousel({

            loop:true,

            margin:15,

            navSpeed:500,

            nav:false,

            dots: false,

            autoplay: true,

            rewind: true,

            navText:[],

            

            responsive:{

                0:{
                    items:1,
                    nav:false

                },

                767:{
                    items:3,
                    nav:false

                }

            }

        });

    });

</script>