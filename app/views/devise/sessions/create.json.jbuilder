json.token @token
json.user do
  json.(@user, :name, :email)
end