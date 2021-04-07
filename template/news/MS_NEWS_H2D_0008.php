<?php   

    $rows = $action->getList('news','newscat_id',4,'news_id','desc','',3,''); 
    $name = $action->getDetail('newscat','newscat_id',4);
?>

<div class="gb-page-blog_ruouvang home_news">
    <div class="container">
        <div class="row">
            <h2><a href="/<?=$name['friendly_url']?>"><?=$name['newscat_name']?></a></h2>
            <div class="row">
                
                    <?php 
                    
                    foreach ($rows as $item) {
                     
                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                    ?>
                    <div class="col-md-6">
                        <div class="gb-news-slide-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive hei300" width="100%"></a>
                                <div class="gb-news-slide-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                  

                                </div>
                            </div>
                           
                    
                        </div>
                    </div>
                    <?php 
                   
                    } ?>
                
            <div class="col-md-6" style="padding-right: 0">
                <img src="/images/<?=$rowConfig['banner2']?>" alt="" width="100%">
            </div>
            <div class="col-md-6" style="padding-left: 0">
                <img src="/images/<?=$rowConfig['banner3']?>" alt="" width="100%">
            </div>
            </div>
        <!-- 
        <img src="/images/<?=$rowConfig['banner3']?>" alt=""> -->
        </div>
    </div>
</div>
