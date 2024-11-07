module Pay
  module Shopify
    class Merchant < Pay::Merchant
      def create_account(**options)
        shopify_account = Struct.new(:id).new("shopify_account_id")
        update(processor_id: shopify_account.id)
        shopify_account
      end

      def account_link(refresh_url:, return_url:, type: "account_onboarding", **options)
        Struct.new(:url).new("/shopify/account_link")
      end

      def login_link(**options)
        Struct.new(:url).new("/shopify/login_link")
      end
    end
  end
end
