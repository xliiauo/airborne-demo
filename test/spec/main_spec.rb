describe "main" do
  it "should return 200 when calling success" do
    get "/success"
    expect_status 200
  end

  it "should return 400 when calling failure" do
    get "/failure"
    expect_status 400
  end
end
