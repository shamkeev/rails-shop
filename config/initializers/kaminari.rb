#This is to eliminate conflicts of activeadmin (uses kaminari for pagination) with will_paginate
Kaminari.configure do |config|
  config.page_method_name = :per_page_kaminari
end