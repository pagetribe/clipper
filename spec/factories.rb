Factory.define :notebook do |n|
  n.name "book1"
end

Factory.define :clipping do |c|
  c.title "clipping1"
  c.association :notebook, :factory => :notebook
end
