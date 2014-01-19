require "spec_helper"

describe "Time to Read Tag" do
  def setup(file, layout)
    @post = setup_post(file)
    do_render(@post, layout)
  end

  it "has time for long article (as number)" do
    setup("1984-03-06-time-to-read-long-as-i.md", "time_to_read_i.html")
    expect(@post.output).to match /4 minutes/
  end

  it "has time for short article (as number)" do
    setup("1984-03-06-time-to-read-short-as-i.md", "time_to_read_i.html")
    expect(@post.output).to match /less than 1 minute/
  end

  it "has time for long article (as string)" do
    setup("1984-03-06-time-to-read-long-as-s.md", "time_to_read_s.html")
    expect(@post.output).to match /four minutes/
  end

  it "has time for short article (as string)" do
    setup("1984-03-06-time-to-read-short-as-s.md", "time_to_read_s.html")
    expect(@post.output).to match /less than one minute/
  end

  it "has time for very long article (as string)" do
    setup("1984-03-06-time-to-read-very-long-as-s.md", "time_to_read_s.html")
    expect(@post.output).to match /28 minutes/
  end
end
