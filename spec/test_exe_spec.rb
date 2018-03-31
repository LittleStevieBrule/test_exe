RSpec.describe TestExe do
  it "has a version number" do
    expect(TestExe::VERSION).not_to be nil
  end

  it "does something useful" do
    expect(false).to eq(true)
  end
end
