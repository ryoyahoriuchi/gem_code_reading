require "slack-notify"
require "dotenv"
Dotenv.load ".env"
require 'clockwork'
require 'active_support/time'

module Clockwork
  client = SlackNotify::Client.new(
    webhook_url: ENV['ADDRESS'],
    channel: "#gemコードリーディング",
    username: "sample_bot"
  )

  every(3.minutes, "aisatu") do
    client.notify("Hello World!!!!!!!!!!!")
  end
end