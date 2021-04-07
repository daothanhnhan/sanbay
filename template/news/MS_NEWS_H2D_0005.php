<?php   

    $rows = $action->getList('news','newscat_id',1,'news_id','desc','',3,''); 

?>
<div class="gb-page-blog_ruouvang home_news">
    <div class="container">
        <div class="row">
            <h1>XE SÂN BAY SIÊU RẺ - CUNG CẤP DỊCH VỤ XE ĐI SÂN BAY GIÁ RẺ CHỈ TỪ 180.000 VNĐ</h1>
            <div class="col-md-12">
                <div class="row">
                    <?php 
                    
                    foreach ($rows as $item) {
                        $d++;
                        $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang); 
                    ?>
                    <div class="col-sm-4">
                        <div class="gb-news-blog_ruouvang-item">
                            <div class="gb-news-blog_ruouvang-item-img">
                                <a href="/<?= $rowLang['friendly_url'] ?>"><img src="/images/<?= $item['news_img'] ?>" alt="<?= $rowLang['lang_news_name'] ?>" class="img-responsive"></a>
                               
                            </div>
                            <div class="gb-news-blog_ruouvang-item-text">
                                <div class="gb-news-blog_ruouvang-item-title">
                                    <h3><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h3>
                                  

                                </div>
                                <div class="gb-news-blog_ruouvang-item-text-des">
                                    <p><?= $rowLang['lang_news_des'] ?></p>
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
</div>