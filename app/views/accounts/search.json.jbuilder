json.array! @accounts do |account|
  json.id account.id
  json.name account.name
  json.user_sign_in current_user
end