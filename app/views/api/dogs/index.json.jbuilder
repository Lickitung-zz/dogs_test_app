json.array! @dogs.each do |dog|
  json.id dog.id
  json.breed dog.breed
  json.age dog.age
  json.color dog.color
end