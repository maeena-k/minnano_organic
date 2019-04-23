if 'AKIAIRWFOPQ4WILCAFCQ'
  Paperclip::Attachment.default_options.merge!(
    storage: :fog,
    fog_credentials: {
      provider: 'AWS',
      aws_access_key_id: 'AKIAIRWFOPQ4WILCAFCQ',
      aws_secret_access_key: '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',
      region: 'ap-northeast-1'
    },
    fog_directory: "maeena"
  )

  Spree::Image.attachment_definitions[:attachment].delete(:url)
  Spree::Image.attachment_definitions[:attachment].delete(:path)
end
