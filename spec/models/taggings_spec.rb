# encoding: utf-8
require 'spec_helper'

describe Tagging do


  before do
    @article = Article.create!(title: "On Hesychasm")
    @tag = Tag.create!(name: "Prayer")
    @article.tags << @tag
  end

  it "should get an article's tags" do
    @article.tags.first.name.should == @tag.name
  end

  it "should get a tag's articles" do
    @tag.articles.first.title.should == @article.title
  end

end
