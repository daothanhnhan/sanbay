<?php 
  function dat_san_bay () {
    global $conn_vn;
    if (isset($_POST['xac_nhan'])) {
      $diem_di = mysqli_real_escape_string($conn_vn, $_POST['diem_di']);
      $diem_den = mysqli_real_escape_string($conn_vn, $_POST['diem_den']);
      $thoi_gian = mysqli_real_escape_string($conn_vn, $_POST['thoi_gian']);
      $dia_diem = mysqli_real_escape_string($conn_vn, $_POST['dia_diem']);
      $loai_xe = mysqli_real_escape_string($conn_vn, $_POST['loai_xe']);
      $phone = mysqli_real_escape_string($conn_vn, $_POST['phone']);
      $code = mysqli_real_escape_string($conn_vn, $_POST['code']);
      $chieu = mysqli_real_escape_string($conn_vn, $_POST['chieu']);
      $price = mysqli_real_escape_string($conn_vn, $_POST['price']);
      $distance = mysqli_real_escape_string($conn_vn, $_POST['distance']);

      $sql = "INSERT INTO dat_san_bay (diem_di, diem_den, thoi_gian, dia_diem, loai_xe, phone, code, chieu, price, distance) VALUES ('$diem_di', '$diem_den', '$thoi_gian', '$dia_diem', '$loai_xe', '$phone', '$code', '$chieu', '$price', '$distance')";
      // echo $sql;
      $result = mysqli_query($conn_vn, $sql);
      if ($result) {
        echo '<script>alert(\'Bạn đã đăng ký thành công.\');</script>';
      } else {
        echo '<script>alert(\'Có lỗi xảy ra.\');</script>';
      }
    }
  }
  dat_san_bay();
?>

<!-- <link rel="stylesheet" href="https://twitter.github.io/typeahead.js/css/examples.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="http://tarruda.github.io/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css"> -->
<link href="http://vietgo.mobi/frontend_asset/web/Themes/Bookin/Content/jquery.datepicker.lunar.css" rel="stylesheet">
<link href="http://vietgo.mobi/frontend_asset/css/bootstrap-datetimepicker.css" rel="stylesheet">
<link href="http://vietgo.mobi/frontend_asset/web/Themes/Bookin/Content/bootstrap-datetimepicker.min.css" rel="stylesheet">
<script src="http://vietgo.mobi/frontend_asset/web/Scripts/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
<style>
.tt-menu, .gist {
    text-align: left;
}
.tt-menu {
    width: 422px;
    margin: 12px 0;
    padding: 8px 0;
    background-color: #fff;
    border: 1px solid #ccc;
    border: 1px solid rgba(0, 0, 0, 0.2);
    -webkit-border-radius: 8px;
    -moz-border-radius: 8px;
    border-radius: 8px;
    -webkit-box-shadow: 0 5px 10px rgb(0 0 0 / 20%);
    -moz-box-shadow: 0 5px 10px rgba(0,0,0,.2);
    box-shadow: 0 5px 10px rgb(0 0 0 / 20%);
}
.tt-suggestion {
    padding: 3px 20px;
    font-size: 18px;
    line-height: 24px;
}
.tt-suggestion:hover {
    cursor: pointer;
    color: #fff;
    background-color: #0097cf;
}

.twitter-typeahead {
  width: 100% !important;
}
.tt-hint {
  left: 23px !important;
}
</style>
<div class="gb-banner-1-ruouvang">
    <img src="/images/<?=$rowConfig['banner1']?>" alt="" class="img-responsive">
    <div class="contact-form">
    	<div class="header-form">
    		<h1>SÂN BAY SIÊU GIÁ RẺ</h1>
    		<h4>Đi đâu cũng rẻ!</h4>
    	</div>
    	<div class="body-form">
    		<ul>
    			<li class="unact active">
    				Sân bay
    			</li>
    			<li class="unact">
    				Đường dài
    			</li>
    		</ul>
    		<div class="form-group gb-porela" style="padding-top: 5px">
    			<input type="radio" name="chieu" checked="" value="1" onclick="radiof(1)">
    		<label for="">1 chiều</label>
    		<input type="radio" name="chieu" value="2" onclick="radiof(2)">
    		<label for="">2 chiều</label>
    		</div>
    		<div class="form-group gb-porela" id="the-basics1">
    			<input type="text" class="typeahead" id="from_places" onchange="run_typehead_di()">
    			<p><i class="fa fa-car" aria-hidden="true"></i> Điểm đi</p>
    		</div>
    		<div class="form-group gb-porela"  id="bloodhound1">
    			<input type="text" class="typeahead" id="to_places" onchange="run_typehead_den()">
    			<p><i class="fa fa-car" aria-hidden="true"></i> Điểm đến</p>
          <input type="hidden" name="" id="origin">
          <input type="hidden" name="" id="diemdi_value">
          <input type="hidden" name="" id="destination">
          <input type="hidden" name="" id="diemden_value">
    		</div>
    		<div class="form-group gb-porela">
    			<input type="text"  id="input-thoi-gian">
    			<p><i class="fa fa-calendar" aria-hidden="true"></i> Ngày đi</p>
    		</div>
        
    		<div class="form-group gb-porela">
    			
    				<div class="col-md-6">
    					<label for="">Loại xe</label> <br>
    					<select name="" id="input-loai-xe">
                            <option value="1"> Xe 5 chỗ Sedan</option>
                            <option value="2"> Xe 7 chỗ</option>
    						<option value="3"> Xe >= 16 chỗ</option>
    					</select>
    				</div>
    				<div class="col-md-6">
    					<label for="">Điểm dừng</label> <br>
    					<select name="" id="input-dia-diem">
    						<option value="1">1</option>
    						<option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
    						<option value="5">5</option>
    					</select>
    				</div>
    			
    		</div>
    		<button data-toggle="" data-target="#sanbay" id="btn-tim-kiem" onclick="tim_kiem()">Xem giá</button>
    	</div>
    </div>
</div>

<!-- Modal -->
<div id="sanbay" class="modal fade" role="dialog" style="z-index: 9999;">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Thông tin đặt xe</h4>
      </div>
      <div class="modal-body">
        <form action="" method="post" accept-charset="utf-8" id="form_san_bay">
          <input type="hidden" name="diem_di" id="form-diem-di">
          <input type="hidden" name="diem_den" id="form-diem-den">
          <input type="hidden" name="thoi_gian" id="form-thoi-gian">
          <input type="hidden" name="dia_diem" id="form-dia-diem">
          <input type="hidden" name="loai_xe" id="form-loai-xe">
          <input type="hidden" name="chieu" id="form-chieu">
          <input type="hidden" name="price" id="form-price">
          <input type="hidden" name="distance" id="form-distance">
          
        </form>
        <p><b>Điểm đi: </b><span id="popup-diem-di"></span></p>
        <p><b>Điểm đến: </b><span id="popup-diem-den"></span></p>
        <p><b>Thời gian: </b><span id="popup-thoi-gian"></span></p>
        <p><b>Số điểm đón - trả: </b><span id="popup-dia-diem"></span></p>
        <p><b>Loại xe: </b><span id="popup-loai-xe"></span></p>
        <div class="row">
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" class="form-control" id="phone" name="phone" placeholder="Số điện thoại (bắt buộc)" form="form_san_bay" required="">
            </div>
          </div>
          <div class="col-md-6">
            <div class="form-group">
              <input type="text" class="form-control" id="code" name="code" placeholder="Nhập mã khuyến mãi" form="form_san_bay">
            </div>
          </div>
        </div>
        <p><b>Giá: </b><span id="price"></span></p>
        <p><b>Khoảng cách: </b><span id="km"></span></p>
        <p><b>Ghi chú: </b><span id="result"></span></p>
      </div>
      <div class="modal-footer">
        <button type="submit" class="btn btn-default" data-dismiss="modal-1" form="form_san_bay" name="xac_nhan">Xác nhận</button>
      </div>
    </div>

  </div>
</div>

<script>
	$(document).ready(function(){
    $('.body-form li').click(function() {
        $(this).siblings('li').removeClass('active');
        $(this).addClass('active');
    });
});
</script>



<script src="https://twitter.github.io/typeahead.js/js/handlebars.js" type="text/javascript" charset="utf-8" async defer></script>
<!-- <script src="https://twitter.github.io/typeahead.js/js/jquery-1.10.2.min.js" type="text/javascript" charset="utf-8" async defer></script> -->
<script src="https://twitter.github.io/typeahead.js/releases/latest/typeahead.bundle.js" type="text/javascript" charset="utf-8" async defer></script>
<!-- <script src="https://twitter.github.io/typeahead.js/js/examples.js" type="text/javascript" charset="utf-8" async defer></script> -->
<!-- <script src="http://sanbay.cafelinkcustomer.info/js/typehead.js" type="text/javascript" charset="utf-8" async defer></script> -->
<script>
// $(document).ready(function() {
    // the basics
  // ----------

  var substringMatcher = function(strs) {
    return function findMatches(q, cb) {
      var matches, substringRegex;

      // an array that will be populated with substring matches
      matches = [];

      // regex used to determine if a string contains the substring `q`
      substrRegex = new RegExp(q, 'i');

      // iterate through the pool of strings and for any string that
      // contains the substring `q`, add it to the `matches` array
      $.each(strs, function(i, str) {
        if (substrRegex.test(str)) {
          matches.push(str);
        }
      });

      cb(matches);//alert('func');
    };
  };

  // var states = ['Alabama', 'Alaska', 'Arizona', 'Arkansas', 'California',
  //   'Colorado', 'Connecticut', 'Delaware', 'Florida', 'Georgia', 'Hawaii',
  //   'Idaho', 'Illinois', 'Indiana', 'Iowa', 'Kansas', 'Kentucky', 'Louisiana',
  //   'Maine', 'Maryland', 'Massachusetts', 'Michigan', 'Minnesota',
  //   'Mississippi', 'Missouri', 'Montana', 'Nebraska', 'Nevada', 'New Hampshire',
  //   'New Jersey', 'New Mexico', 'New York', 'North Carolina', 'North Dakota',
  //   'Ohio', 'Oklahoma', 'Oregon', 'Pennsylvania', 'Rhode Island',
  //   'South Carolina', 'South Dakota', 'Tennessee', 'Texas', 'Utah', 'Vermont',
  //   'Virginia', 'Washington', 'West Virginia', 'Wisconsin', 'Wyoming'
  // ];

  var states = [];

  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
     // document.getElementById("demo").innerHTML = this.responseText;
      // alert(this.responseText);

      
      // setTimeout(function(){

       states = JSON.parse(this.responseText);
     // }, 1500);
      // console.log(this.responseText);
      console.log(states);
    }
  };
  xhttp.open("GET", "/functions/ajax/typehead.php", true);
  xhttp.send();
  
  setTimeout(function(){
    console.log(states.length);
    if (states.length == 0) {
      
      // location.reload();
    }
    console.log(typeof states[0]);

    if (typeof states[0] != 'string') {
      // console.log('mang');
      // location.reload();
    }
  }, 3000);

  // if (states[0].length != 0) {
  //   setTimeout(function(){
  //     // location.reload();
  //   }, 9000);
  // }

  

setTimeout(function(){  
    // alert('a');
    // console.log(states);
  $('#the-basics .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'states',
    source: substringMatcher(states)
  });

  
}, 1000);

// constructs the suggestion engine
  var states = new Bloodhound({
    datumTokenizer: Bloodhound.tokenizers.whitespace,
    queryTokenizer: Bloodhound.tokenizers.whitespace,
    // `states` is an array of state names defined in "The Basics"
    local: states
  });


// });
</script>
<script>
setTimeout(function(){
     // alert("Hello"); 
     $('#bloodhound .typeahead').typeahead({
    hint: true,
    highlight: true,
    minLength: 1
  },
  {
    name: 'states',
    source: substringMatcher(states)
  });
}, 1000);

    var diem_di = '';
    var diem_den = '';

    function run_typehead_di (data) {
        // alert(data);
        diem_di = data;
        document.getElementById("popup-diem-di").innerHTML = diem_di;
        document.getElementById("form-diem-di").value = diem_di;

        check_di_den();
    }

    function run_typehead_den (data) {
        // alert(data);
        diem_den = data;
        document.getElementById("popup-diem-den").innerHTML = diem_den;
        document.getElementById("form-diem-den").value = diem_den;

        check_di_den();
    }

    function tim_kiem () {
      // check_di_den();
      var thoi_gian = document.getElementById("input-thoi-gian").value;
      var dia_diem = document.getElementById("input-dia-diem").value;
      var loai_xe = document.getElementById("input-loai-xe").value;
      var from = document.getElementById("from_places").value;
      var to = document.getElementById("to_places").value;

      if (loai_xe == 1) {
        loai_xe = 'Xe 5 chỗ Sedan';
      } else if (loai_xe == 2) {
        loai_xe = 'Xe 7 chỗ';
      } else if (loai_xe == 3) {
        loai_xe = 'Xe >= 16 chỗ';
      }
      // alert(from);
      document.getElementById("popup-thoi-gian").innerHTML = thoi_gian;
      document.getElementById("popup-dia-diem").innerHTML = dia_diem;
      document.getElementById("popup-loai-xe").innerHTML = loai_xe;

      document.getElementById("form-thoi-gian").value = thoi_gian;
      document.getElementById("form-dia-diem").value = dia_diem;
      document.getElementById("form-loai-xe").value = loai_xe;

      document.getElementById("form-chieu").value = chieu;

      document.getElementById("popup-diem-di").innerHTML = from;
      document.getElementById("popup-diem-den").innerHTML = to;

      document.getElementById("form-diem-di").value = from;
      document.getElementById("form-diem-den").value = to;

    }

    function check_di_den () {
      if (diem_di != '' && diem_den != '') {
        document.getElementById("btn-tim-kiem").setAttribute("data-toggle", "modal");
      } else {
        // alert('Bạn chưa chọn đủ điểm đi đến.');
      }
    }

    var chieu = 1;
    function radiof (so) {
      chieu = so;
      // alert(chieu);
    }

    function formatNumber(nStr, decSeperate, groupSeperate) {
            nStr += '';
            x = nStr.split(decSeperate);
            x1 = x[0];
            x2 = x.length > 1 ? '.' + x[1] : '';
            var rgx = /(\d+)(\d{3})/;
            while (rgx.test(x1)) {
                x1 = x1.replace(rgx, '$1' + groupSeperate + '$2');
            }
            return x1 + x2;
        }
</script>

<script>
$(function() {
            // add input listeners
            google.maps.event.addDomListener(window, 'load', function () {
                var from_places = new google.maps.places.Autocomplete(document.getElementById('from_places'));
                var to_places = new google.maps.places.Autocomplete(document.getElementById('to_places'));

                google.maps.event.addListener(from_places, 'place_changed', function () {
                    var from_place = from_places.getPlace();
                    var from_address = from_place.formatted_address;
                    var diemdi_value = from_place.geometry.location;
                    $('#origin').val(from_address);
                    $('#diemdi_value').val(diemdi_value);
                });

                google.maps.event.addListener(to_places, 'place_changed', function () {
                    var to_place = to_places.getPlace();
                    var to_address = to_place.formatted_address;
                    var diemden_value = to_place.geometry.location;
                    $('#destination').val(to_address);
                    $('#diemden_value').val(diemden_value);

                });

            });

            // calculate distance
            function calculateDistance() {
                // alert('1');
                var origin = $('#origin').val();
                var destination = $('#destination').val();
                var service = new google.maps.DistanceMatrixService();
                service.getDistanceMatrix(
                    {
                        origins: [origin],
                        destinations: [destination],
                        travelMode: google.maps.TravelMode.DRIVING,
                        unitSystem: google.maps.UnitSystem.IMPERIAL, // miles and feet.
                        // unitSystem: google.maps.UnitSystem.metric, // kilometers and meters.
                        avoidHighways: false,
                        avoidTolls: false
                    }, callback1);
            }

            function callback1(response, status) {
                if (status != google.maps.DistanceMatrixStatus.OK) {
                    $('#result').html(err);
                } else {
                    var origin = response.originAddresses[0];//alert(origin);
                    var destination = response.destinationAddresses[0];

                    if (response.rows[0].elements[0].status === "ZERO_RESULTS") {
                        $('#result').html("Better get on a plane. There are no roads between "  + origin + " and " + destination);
                    } else {

                        var distance = response.rows[0].elements[0].distance;
                        var duration = response.rows[0].elements[0].duration;
                        console.log(response.rows[0].elements[0].distance);
                        var distance_in_kilo = distance.value / 1000; // the kilom
                        var distance_in_mile = distance.value / 1609.34; // the mile
                        var duration_text = duration.text;
                        var duration_value = duration.value;
                        var km = response.rows[0].elements[0].distance.value;
                        // alert(km);
                        $('#km').html(formatNumber(km, '.', ',')+' km');
                        $('#form-distance').val(km);

                        var diemdi = $('#diemdi_value').val();//alert(diem_di);
                        var diemden = $('#diemden_value').val();

                        if (diemdi == '(21.2187149, 105.8041709)' || diemdi == '(21.2179038, 105.7925151)' || diemdi == '(21.2153847, 105.8030334)' || diemden == '(21.2187149, 105.8041709)' || diemden == '(21.2179038, 105.7925151)' || diemden == '(21.2153847, 105.8030334)') {
                          // return true;
                          if (chieu == '2') {
                                // free4h = 'Miễn phí 4h chờ, ngoài 4h thêm 30k/h';
                                // 2 chieu có điểm san bay
                                //check loai xe
                                var loaixe_sb   = $('#input-loai-xe').val();

                                switch (loaixe_sb) {
                                    case '1':
                                        if (km <= 28000) {
                                          price_final = 250000 + 200000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 280000 + 230000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 300000 + 250000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '2':
                                        if (km <= 28000) {
                                          price_final = 280000 + 250000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 310000 + 280000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 340000 + 300000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '3':
                                        if (km <= 28000) {
                                          price_final = 450000 + 400000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 500000 + 450000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 550000 + 500000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    default:
                                        console.log('1111111111111111');
                                }
                            }else{
                              if (diemdi == '(21.2187149, 105.8041709)' || diemdi == '(21.2179038, 105.7925151)' || diemdi == '(21.2153847, 105.8030334)') {
                                //console.log("1 chiều dường dài");
                                // 1 chiều có điểm đi là sân bay
                                //check loai xe
                                var loaixe_sb   = $('#input-loai-xe').val();
                                switch (loaixe_sb) {
                                    case '1':
                                        if (km <= 28000) {
                                          price_final = 250000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 280000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 300000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '2':
                                        if (km <= 28000) {
                                          price_final = 280000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 310000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 340000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '3':
                                        if (km <= 28000) {
                                          price_final = 450000;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 500000;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 550000;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        console.log(price_final);
                                        break;
                                    default:
                                        console.log('1111111111111111');
                                }
                              } else {
                                //console.log("1 chiều dường dài");
                                // 1 chiều có điểm đến là sân bay
                                //check loai xe
                                var thoi_gian = $('#input-thoi-gian').val();
                                thoi_gian = thoi_gian.substr(11, 5);
                                // alert(thoi_gian);
                                if (thoi_gian >= '00:00' && thoi_gian < '12:00') {
                                  var giam = 0;
                                } else {
                                  var giam = 20000;
                                }
                                var loaixe_sb   = $('#input-loai-xe').val();
                                switch (loaixe_sb) {
                                    case '1':
                                        if (km <= 28000) {
                                          price_final = 200000 - giam;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 230000 - giam;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 250000 - giam;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '2':
                                        if (km <= 28000) {
                                          price_final = 250000 - giam;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 280000 - giam;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 300000 - giam;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        break;
                                    case '3':
                                        if (km <= 28000) {
                                          price_final = 400000 - giam;
                                        }
                                        if (km > 28000 && km <= 35000) {
                                          price_final = 450000 - giam;
                                        }
                                        if (km > 35000 && km <= 38000) {
                                          price_final = 500000 - giam;
                                        }
                                        if (km > 38000) {
                                          price_final = '#';
                                        }
                                        console.log(price_final);
                                        break;
                                    default:
                                        console.log('1111111111111111');
                                }
                              }
                                
                            }// end Đường dài
                            if (price_final == '#') {
                              $('#price').html('Giá thỏa thuận');
                              $('#form-price').val(0);
                            } else {
                              $('#price').html(formatNumber(price_final, '.', ',') + ' vnđ');
                              $('#form-price').val(price_final);
                            }
                            
                        }else{
                          if (chieu == '2') {
                                // free4h = 'Miễn phí 4h chờ, ngoài 4h thêm 30k/h';
                                // 2 chiều đường dài
                                //check loai xe
                                var loaixe_sb   = $('#input-loai-xe').val();

                                switch (loaixe_sb) {
                                    case '1':
                                        price_final = km * 6 * 2;
                                        break;
                                    case '2':
                                        price_final = km * 7 * 2;
                                        break;
                                    case '3':
                                        price_final = km * 10 * 2;
                                        break;
                                    default:
                                        console.log('1111111111111111');
                                }
                            }else{
                                //console.log("1 chiều dường dài");
                                // 1 chiều đường dài
                                //check loai xe
                                var loaixe_sb   = $('#input-loai-xe').val();
                                switch (loaixe_sb) {
                                    case '1':
                                        price_final = km * 9;
                                        break;
                                    case '2':
                                        price_final = km * 10;
                                        break;
                                    case '3':
                                        price_final = km * 14;
                                        console.log(price_final);
                                        break;
                                    default:
                                        console.log('1111111111111111');
                                }
                            }// end Đường dài
                            $('#price').html(formatNumber(price_final, '.', ',') + ' vnđ');
                            $('#form-price').val(price_final);
                        }

                        
                    }
                }
            }

            $('#btn-tim-kiem').click(function(e){
                // e.preventDefault();
                // if (validateSubmitDD()) {
                    calculateDistance();
                // }
            });


});
</script>

<script src="https://maps.googleapis.com/maps/api/js?libraries=places,geometry&key=AIzaSyCHS02bhpqnzPftjxsN40EAWFISead49EM&language=vi-VI&region=VN&avoid=tolls|highways|ferries"></script>

<script src="http://vietgo.mobi/frontend_asset/web/Scripts/jquery.datepicker.lunar.js"></script>
<script src="http://vietgo.mobi/frontend_asset/web/Scripts/jquery.ui.datepicker-vi.min.js"></script>
<script>
        $(document).ready(function() {
            // $('#gotoDateTime').datetimepicker({
            //     startDate: '-0d',
            //     format: "dd/mm/yyyy hh:ii",
            //     autoclose: true,
            //     todayBtn: true,
            //     pickerPosition: "bottom-left"
            // });
            $('#input-thoi-gian').datetimepicker({
                startDate: '-0d',
                format: "dd/mm/yyyy hh:ii",
                autoclose: true,
                todayBtn: true,
                pickerPosition: "bottom-left"
            });
        });
    </script>
    <script>
        $(document).ready(function() {
            var def = new Date();
            // $('#gotoDateTime').datetimepicker();
            // $('#gotoDateTime').datetimepicker('setDate', def);
            $('#input-thoi-gian').datetimepicker();
            $('#input-thoi-gian').datetimepicker('setDate', def);

        });
    </script>