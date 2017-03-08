ShopifyApp.configure do |config|
  config.application_name = "My Shopify App"
  config.api_key = "025d26a5b8fd72dcb23aacd031d06d8c"
  config.secret = "7a0d9add0c05aad22267091da7a37792"
  config.scope = "read_orders, read_products"
  config.embedded_app = true
  # config.webhooks = [
  #     {topic: 'carts/update', address: 'https://example-app.com/webhooks/carts_update'},
  #     {topic: 'products/update', address: 'https://example-app.com/webhooks/products_update', fields: ['title', 'vendor']}
  #   ]
  config.scripttags = [
      {event:'onload', src: 'https://shopify-knagode.herokuapp.com/fancy.js'}
      #{event:'onload', src: ->(domain) { dynamic_tag_url(domain) } }
    ]
end
