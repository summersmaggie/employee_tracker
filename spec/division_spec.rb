require("spec_helper")

describe(Division) do
  it("validates the presence of title") do
    division = Division.new({:title => ""})
    expect(division.save()).to(eq(false))
  end
end
