describe City do

  before(:each) { @city = City.new(name: 'London', short_name: 'Ld') }

  subject { @city }

  it { should respond_to(:name) }

  it "#name returns a string" do
    expect(@city.name).to match 'London'
  end
  
  it { should respond_to(:name) }

  it "#short_name returns a string" do
    expect(@city.short_name).to match 'Ld'
  end
  
  it "#name cannot be blank" do
    city = City.new(name: '', short_name: 'NY')
    expect(city.save).to be false
  end
  
  it "#short_name cannot be blank" do
    city = City.new(name: 'NewYork', short_name: '')
    expect(city.save).to be false
  end

end
