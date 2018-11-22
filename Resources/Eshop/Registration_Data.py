valid_data = {'firstname':'Alice',
              'lastname':'Black',
              'password':'Pass123',
              'address':'Valley Street',
              'city':'Seattle',
              'country':'United States',
              'postcode':'12345',
              'phone':'11111111',
              'phone_mobile':'55555555'}
invalid_zip_codes = ['123456','*####', 'alda2', '1234', ' 2345', '12 45']
invalid_passwords = ['A123', '1232', 'alda']
invalid_messages = {'postcode':"The Zip/Postal code you've entered is invalid. It must follow this format: 00000"}