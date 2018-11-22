# Registration Form
Input_firstname = 'id=customer_firstname'
Input_lastname = 'id=customer_lastname'
Input_password = 'id=passwd'
Input_address1 = 'id=address1'
Input_city = 'id=city'
Select_country = 'id=id_country'
Input_postcode = 'id=postcode'
Input_phone = 'id=phone'
Input_mobile_phone = 'id=phone_mobile'
Button_register = 'id=submitAccount'

# Pre-registration Form
Input_email_create = 'id=email_create'
Button_open_sign_in_form = 'id=SubmitCreate'



categories = {'Women': "//div[@id='block_top_menu']//ul[not (contains(@style, 'display'))]/li[1]",
              'Dresses': "//div[@id='block_top_menu']//ul[not (contains(@style, 'display'))]/li[2]",
              'T-shirts': "//div[@id='block_top_menu']//ul[not (contains(@style, 'display'))]/li[3]"}

txt_category_title = "class:cat-name"
txt_price_tag_text = "//div[@class='right-block']//span[@itemprop='price']"
price_tag_mask = "^\\$[\\d]+.[\\d]{,2}$"

filters = {'Categories: Tops': "//label[@for='layered_category_4']//span",
           'Categories: Dresses': "//label[@for='layered_category_8']//span",
           'Categories: Casual Dresses': "//label[@for='layered_category_9']//span",
           'Categories: Evening Dresses': "//label[@for='layered_category_10']//span",
           'Categories: Summer Dresses': "//label[@for='layered_category_11']//span",
           'Size: S': "//label[@for='layered_id_attribute_group_1']//span",
           'Size: M': "//label[@for='layered_id_attribute_group_2']//span",
           'Size: L': "//label[@for='layered_id_attribute_group_3']//span",
           'Color: Beige': "//label[@for='layered_id_attribute_group_7']//span",
           'Color: White': "//label[@for='layered_id_attribute_group_8']//span",
           'Color: Black': "//label[@for='layered_id_attribute_group_11']//span",
           'Color: Orange': "//label[@for='layered_id_attribute_group_13']//span",
           'Color: Blue': "//label[@for='layered_id_attribute_group_14']//span",
           'Color: Green': "//label[@for='layered_id_attribute_group_15']//span",
           'Color: Yellow': "//label[@for='layered_id_attribute_group_16']//span",
           'Color: Pink': "//label[@for='layered_id_attribute_group_24']//span",            
           'Composition: Cotton': "//label[@for='layered_id_feature_5']//span",
           'Composition: Polyester': "//label[@for='layered_id_feature_1']//span",
           'Composition: Viscose': "//label[@for='layered_id_feature_3']//span",                  
           'Styles: Casual': "//label[@for='layered_id_feature_11']//span",
           'Styles: Dressy': "//label[@for='layered_id_feature_16']//span",
           'Styles: Girly': "//label[@for='layered_id_feature_13']//span",
           'Properties: Colorful Dress': "//label[@for='layered_id_feature_18']//span",
           'Properties: Maxi Dress': "//label[@for='layered_id_feature_21']//span",
           'Properties: Midi Dress': "//label[@for='layered_id_feature_20']//span",
           'Properties: Short Dress': "//label[@for='layered_id_feature_19']//span",
           'Properties: Short Sleeve': "//label[@for='layered_id_feature_17']//span",
           'Availability: In stock': "//label[@for='layered_quantity_1']//span",
           'Manufacturer: Fashion Manufacturer': "//label[@for='layered_manufacturer_1']//span",
           'Condition: New': "//label[@for='layered_condition_new']//span"}


txt_product = "//div[contains(@class,'block')]/h5/a"

dropdown_sort = "id:selectProductSort"

sorting_criteria = {'Price: Lowest first': ['ASC', txt_price_tag_text],
                    'Price: Highest first': ['DESC', txt_price_tag_text],
                    'Product Name: A to Z': ['ASC', txt_product],
                    'Product Name: Z to A': ['DESC', txt_product]}

centre_column = "//ul[contains(@class, 'product_list')]"

# spinner is not on a page
spinner_not_present = "//ul[@class='product_list grid row' and contains(@style,'opacity: 1')]"
spinner_on_page = "//ul[@class='product_list grid row' and @style]"

START_INDEX = "1"
ASC_DESC_INDEX = "0"
SORTING_TEXT_IDENTIFIER = "1"
