<?php 
    $list_news_ralative = $action_news->getListNewsRelate_byIdCat_hasLimit($row['newscat_id'], 3);//var_dump($list_news_ralative);
?>

<div class="gb-tintuc-lienquan">
    <!--HEADER PRODUICT TOP-->
    <div class="gb-product-top">
        <div class="gb-tintuc-lienquan-title">Tin tức liên quan</div>
    </div>
    <!--SHOW PRODUCT ITEM-->
    <div class="gb-product-show">
        <div class="gb-tintuc-lienquan-three-item ">
            <ul>            <?php 
            foreach ($list_news_ralative as $item) {
                $rowLang = $action_news->getNewsLangDetail_byId($item['news_id'],$lang);
            ?>
            <li>
                
                        <h2><a href="/<?= $rowLang['friendly_url'] ?>"><?= $rowLang['lang_news_name'] ?></a></h2>
            </li>
                   
             
            <?php } ?>
            </ul>

        </div>
    </div>
</div>
