#!/usr/bin/env ruby -Ilib
require 'ruby_bitbankcc'

api_key = ENV['API_KEY']
secret_key = ENV['SECRET_KEY']

bbcc = Bitbankcc.new(api_key , secret_key)
response = bbcc.read_transactions('btc_jpy')
#bbcc.read_ticker('btc_jpy')
#bbcc.read_order_books('btc_jpy')
#bbcc.read_balance()
#bbcc.read_active_orders('btc_jpy')
#bbcc.create_order('btc_jpy', "0.001", 130000, 'buy', 'limit')
#bbcc.cancel_order('btc_jpy', order_id)
#bbcc.read_trade_history('btc_jpy')
#bbcc.read_withdrawal_account('btc')
#bbcc.request_withdrawal('btc', 'ACCOUNT UUID', '0.001', 'OTP TOKEN', 'SMS TOKEN')
puts response.body
#p JSON.parse(response.body)
