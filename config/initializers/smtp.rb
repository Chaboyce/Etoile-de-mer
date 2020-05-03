# config/initializers/smtp.rb


ActionMailer::Base.smtp_settings = {
  address: 'heroku.com',
  port: 587,
  domain: 'yourdomain.com',
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  authentication: :login,
  enable_starttls_auto: true
}
