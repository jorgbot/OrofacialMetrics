Aws.add_service(:CloudFront, {
  api: "#{Aws::API_DIR}/cloudfront/2017-10-30/api-2.json",
  docs: "#{Aws::API_DIR}/cloudfront/2017-10-30/docs-2.json",
  examples: "#{Aws::API_DIR}/cloudfront/2017-10-30/examples-1.json",
  paginators: "#{Aws::API_DIR}/cloudfront/2017-10-30/paginators-1.json",
  waiters: "#{Aws::API_DIR}/cloudfront/2017-10-30/waiters-2.json",
})

module Aws
  module CloudFront

    autoload :Signer, 'aws-sdk-core/cloudfront/signer.rb'
    autoload :UrlSigner, 'aws-sdk-core/cloudfront/url_signer.rb'
    autoload :CookieSigner, 'aws-sdk-core/cloudfront/cookie_signer.rb'

  end
end
