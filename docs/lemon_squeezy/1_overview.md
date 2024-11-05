# Using Pay with Lemon Squeezy

Lemon Squeezy works differently than most of the other payment processors so it comes with some limitations and differences.

* Checkout only happens via iFrame or hosted page
* Cancelling a subscription cannot be resumed

## Creating Customers

First, you tell Pay which payment processor to use:

```ruby
# Set the payment processor
@user.set_payment_processor :lemon_squeezy
```

Then you can create a [Checkout](https://docs.lemonsqueezy.com/api/checkouts/create-checkout) to let the user purchase a product.

```ruby
@user.payment_processor.checkout(variant_id: "xyz")
```

Customers are lazy created, so they won't be created until you create a Checkout or ask for the Lemon Squeezy customer object through Pay.

```ruby
@user.payment_processor.api_record
```

## Subscriptions

Lemon Squeezy subscriptions are not created through the API, but through Webhooks. When a
subscription is created, Lemon Squeezy will send a webhook to your application. Pay will
automatically create the subscription for you.

## Configuration

### API Key

You can generate an API key [here](https://app.lemonsqueezy.com/settings/api)

### Store ID

Certain API calls require a Store ID. You can find this [here](https://app.lemonsqueezy.com/settings/stores).

### Signing Secret

When creating a webhook, you have the option to set a signing secret. This is used to verify
that the webhook request is coming from Lemon Squeezy.

You'll find this page [here](https://app.lemonsqueezy.com/settings/webhooks).

### Environment Variables

Pay will automatically look for the following environment variables, or the equivalent
Rails credentials:

* `LEMON_SQUEEZY_API_KEY`
* `LEMON_SQUEEZY_STORE_ID`
* `LEMON_SQUEEZY_SIGNING_SECRET`
