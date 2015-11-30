Pay2go.setup do |pay2go|
  if Rails.env.development?
    pay2go.merchant_id = "11108921"  # 放測試站的 key

    pay2go.hash_key    = "KyEA50j4JJ9M33rbIKwof55enm4l67zQ"
    pay2go.hash_iv     = "FdrKeKOXtYJw2bIK"
    pay2go.service_url = "https://capi.pay2go.com/MPG/mpg_gateway"
  else
    pay2go.merchant_id = "11108921"  # 放正式站的 key

    pay2go.hash_key    = "KyEA50j4JJ9M33rbIKwof55enm4l67zQ"
    pay2go.hash_iv     = "FdrKeKOXtYJw2bIK"
    pay2go.service_url = "https://api.pay2go.com/MPG/mpg_gateway"
  end
end