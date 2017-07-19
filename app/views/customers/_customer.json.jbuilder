json.extract! customer, :id, :name, :logo, :description,:sozlesme_yoneticisi,:sozlesme_no,:sozlesme_bitis,:sozlesme_baslangıc, :created_at, :updated_at
json.url customer_url(customer, format: :json)
