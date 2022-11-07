*** Variables ***
#Common Variables
${URL}                                          http://demostore.supersqa.com/
${BROWSER}                                      Chrome
${navigate_to_login_page}                       //a[@href='http://demostore.supersqa.com/my-account/'][1]
${login_username_textbox}                       //input[@id='username']
${login_password_textbox}                       //input[@id='password']
${login_submit_button}                          //button[contains(text(),'Log in')]

${search_textbox}                               //input[@class='search-field']
${input_searchBox}                              //input[@id='woocommerce-product-search-field-0']
${click_product}                                //h2[contains(text(),'Hoodie with Zipper')]
${select_quantity}                              //input[contains(@class,'input-text qty')]

${cart_button}                                  //button[contains(text(),'Add to cart')]
${VIEW_CART}                                    //a[contains(text(),'View cart')][1]
${get_price}                                    //td[@class='product-price']
${get_quantity}                                 //input[@class='input-text qty text']
${get_subtotal}                                 //td[@class='product-subtotal']

${scroll_to_view_checkout_btn}                  //a[@class='checkout-button button alt wc-forward']
${select_free-shipping_method}                  //input[@id='shipping_method_0_free_shipping2']
${checkout_button}                              (//a[@href='http://demostore.supersqa.com/checkout/'])[3]


#Credentials
${EMAIL}                                        vetriveld35@gmail.com
${PASSWORD}                                     Vetri@123


#Product Details
${Product_Name}                                 hoodie
${Quantity}                                     2