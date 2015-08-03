require('rspec')
require('title_case')
require('titleize')

describe('String#title_case') do
  it("capitalizes the first letter of a word") do
    expect(("beowulf").title_case()).to(eq("Beowulf"))
  end

  it("capitalizes the first letter of all the words in a multiple word title") do
    expect(("color purple").title_case()).to(eq("Color Purple"))
  end

  it("does not capitalize designated words(like prepositions, conjunctions, etc)") do
    expect(("beowulf from brighton beach").title_case()).to(eq("Beowulf from Brighton Beach"))
  end

  it("capitalizes designated words if they are the first word") do
    expect(("from beowulf to the hulk").title_case()).to(eq("From Beowulf to the Hulk"))
  end

  it("handles non-letter numbers") do
    expect(("57 beowulf alternative endings!!").title_case()).to(eq("57 Beowulf Alternative Endings!!"))
  end

end
