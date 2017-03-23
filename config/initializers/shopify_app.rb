ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "025d26a5b8fd72dcb23aacd031d06d8c"
  config.secret = "7a0d9add0c05aad22267091da7a37792"
  config.scope = 'read_customers, read_orders, write_products'
  config.embedded_app = true

  app_url = "https://4563d519.ngrok.io"

  config.webhooks = [
      {topic: 'carts/update', address: "#{app_url}/webhooks/carts_update"},
      {topic: 'products/update', address: "#{app_url}/webhooks/products_update"} #, fields: ['title', 'vendor']}
    ]
  config.scripttags = [
      {event:'onload', src: "#{app_url}/fancy.js"}
      #{event:'onload', src: ->(domain) { dynamic_tag_url(domain) } }
    ]
end
