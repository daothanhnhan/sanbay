<?php
    $rows = $acc->getList("dat_san_bay","","","id","desc",$trang, 20, "dat-san-bay");//var_dump($rows);
?>	
    <div class="boxPageNews">
        <!-- <h1><a href="index.php?page=them-thuong-hieu">Thêm</a></h1> -->
        <table class="table table-hover">
            <thead>
                <tr>
                    <th>STT</th>
                    <th>Điểm đi</th>
                    <th>Điểm đến</th>
                    <th>Thời gian</th>
                    <th>Số điểm đón trả</th>
                    <th>Loại xe</th>
                    <th>Điện thoại</th>
                    <th>Mã</th>
                    <th>Chiều</th>
                    <th>Giá</th>
                    <th>Khoảng cách</th>
                </tr>
            </thead>
            <tbody>
                <?php 
                    $d = 0;
                    foreach ($rows['data'] as $row) {
                        $d++;
                    ?>
                        <tr>
                            <td><?= $d ?></td>
                            <td><?= $row['diem_di']?></td>
                            <td><?= $row['diem_den']?></td>
                            <td><?= $row['thoi_gian']?></td>
                            <td><?= $row['dia_diem']?></td>
                            <td><?= $row['loai_xe']?></td>
                            <td><?= $row['phone']?></td>
                            <td><?= $row['code']?></td>
                            <td><?= $row['chieu']?></td>
                            <td><?= number_format($row['price'])?> đ</td>
                            <td><?= number_format($row['distance'])?> km</td>
                            <!-- <td>
                                <img src="/images/<?= $row['image'] ?>" width="100">
                            </td> -->
                            <!-- <td style="float: none;"><a href="index.php?page=xoa-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;" onclick="return confirm('Bạn có chắc muốn xóa.')">Xóa</a> | <a href="index.php?page=sua-thuong-hieu&id=<?= $row['id'] ?>" style="float: none;">Sửa</a></td> -->
                        </tr>
                    <?php
                    }
                ?>
            </tbody>
        </table>
    	
        <div class="paging">             
        	<?= $rows['paging'] ?>
		</div>
    </div>
    <p class="footerWeb">Cảm ơn quý khách hàng đã tin dùng dịch vụ của chúng tôi<br />Sản phẩm thuộc Công ty TNHH Truyền Thông Và Công Nghệ Cafelink Việt Nam</p>             