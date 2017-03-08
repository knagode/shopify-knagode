ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "025d26a5b8fd72dcb23aacd031d06d8c"
  config.secret = "7a0d9add0c05aad22267091da7a37792"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
end
