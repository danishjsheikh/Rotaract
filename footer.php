<?php
    include "admin/conn.php";

    //fetch settings
    $settings = mysqli_query($con,"SELECT * FROM settings");
    $setting  = mysqli_fetch_array($settings);
    $recent = mysqli_query($con,"SELECT * FROM events ORDER BY id DESC LIMIT 6");
?>
<!--Main Footer-->
    <footer class="main-footer">
        <div class="upper-box">
            <div class="auto-container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="widget contact-widget style-two">
                            <h4>Do You Have Any Question? Please <br> Contact Our Team</h4>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="wrapper-box">
                                        <div class="icon-box">
                                            <div class="icon"><span class="flaticon-calling"></span></div>
                                            <div class="text"><strong>Phone</strong><a href="tel:<?php echo $setting['phone']; ?>"><?php echo $setting['phone']; ?></a></div>
                                        </div>
                                        <div class="icon-box">
                                            <div class="icon"><span class="flaticon-mail"></span></div>
                                            <div class="text"><strong>Email</strong><a href="mail:<?php echo $setting['email']; ?>"><?php echo $setting['email']; ?></a></div>
                                        </div>
                                    </div> 
                                </div>
                                <!-- <div class="col-md-6">
                                    <div class="icon-box">
                                        <div class="icon"><span class="flaticon-mail"></span></div>
                                        <div>
                                            <div class="text"><strong>Mon - Friday</strong>08.00 am to 9.00pm</div>
                                            <div class="text"><strong>Saturday</strong>10.00 am to 4.00pm</div>
                                            <div class="text"><span>Sunday-Closed</span></div>
                                        </div>                                    
                                    </div>
                                </div> -->
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="widget links-widget">
                                    <h4 class="widget_title">Useful Links</h4>
                                    <div class="widget-content">
                                        <ul class="list">
                                            <li><a href="about.php">About Us</a></li>
                                            <li><a href="contact.php">Get In Touch</a></li>
                                            <li><a href="events.php">Events</a></li>
                                           <li><a href="member.php">Our Team</a></li>
                                            <!-- <li><a href="terms.php">Terms & Conditions</a></li> -->
                                        </ul>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="widget instagram-widget">
                                    <h4 class="widget_title">Our Gallery</h4>
                                    <div class="wrapper-box">
                                    <?php while ($row=mysqli_fetch_array($recent)){?>
                                        <div class="image">
                                            <img style="height: 80px; width: 80px;"src="admin/images/events/<?php echo $row['img']; ?>" alt="">
                                            <div class="overlay-link"><a href="admin/images/events/<?php echo $row['img']; ?>"class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div> 
                                        <?php  } ?>
                                        <!-- <div class="image">
                                            <img src="assets/images/gallery/gallery-2.jpg" alt="">
                                            <div class="overlay-link"><a href="assets/images/gallery/gallery-2.jpg" class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div>
                                        <div class="image">
                                            <img src="assets/images/gallery/gallery-3.jpg" alt="">
                                            <div class="overlay-link"><a href="assets/images/gallery/gallery-3.jpg" class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div>
                                        <div class="image">
                                            <img src="assets/images/gallery/gallery-4.jpg" alt="">
                                            <div class="overlay-link"><a href="assets/images/gallery/gallery-4.jpg" class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div>
                                        <div class="image">
                                            <img src="assets/images/gallery/gallery-5.jpg" alt="">
                                            <div class="overlay-link"><a href="assets/images/gallery/gallery-5.jpg" class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div>
                                        <div class="image">
                                            <img src="assets/images/gallery/gallery-6.jpg" alt="">
                                            <div class="overlay-link"><a href="assets/images/gallery/gallery-6.jpg" class="lightbox-image" data-fancybox="gallery"><span class="fa fa-plus"></span></a></div>
                                        </div> -->
                                    </div><!-- /.gallery-wrapper -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div> 
        </div>               
    </footer>
    <!--End Main Footer-->

    <div class="footer-bottom">
        <div class="auto-container">
            <div class="row m-0 align-items-center justify-content-between">
                <div class="copyright-text">Copyright © 2023 <?php echo $setting['site_name']; ?> | Designed And Developed By <a target="blank" href="https://www.linkedin.com/in/danish-j-sheikh/"> Danish Sheikh</a></div>
                <ul class="menu">
                </ul>
            </div>            
        </div>
    </div>
	
</div>
<!--End pagewrapper-->