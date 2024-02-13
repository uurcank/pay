module Pay
    module Shopify
      autoload :Billable, "pay/shopify/billable"
      autoload :Charge, "pay/shopify/charge"
      autoload :Error, "pay/shopify/error"
      autoload :PaymentMethod, "pay/shopify/payment_method"
      autoload :Subscription, "pay/shopify/subscription"
      autoload :Merchant, "pay/shopify/merchant"
    end
  end
  