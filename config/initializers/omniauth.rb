Rails.application.config.middleware.use OmniAuth::Builder do
  if Rails.env.development? || Rails.env.test?
    provider :github, "372f5e0fa0ef9ed3eec6", "022282a491c6d42b2e4ad9bbf4c6509b6f62d92d"
  else
    provider :github,
    Rails.application.credentials.github[:client_id]
    Rails.application.credentials.github[:client_secret]
  end
end