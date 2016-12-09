Fabricator(:signin, class_name: :hash) do
  type            "account"
  plan_identifier "dnsimple-professional"
  uid             { "1" }
  email           { "me@lucaguidi.com" }
  token           { "abc123" }
end
