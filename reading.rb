require "slack-notify"
require "clockwork"

client = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")
client = SlackNotify.new(options)

client.test