require 'pry'
class QuotesController < Trails::Controller
  def yoda
    render :yoda, message: "Do or Do not There is no Try"
  end

  def json_quote
    quote = FileModel.find(1)
    render :json_quote, :obj => quote
  end

  def index
    quotes = FileModel.all
    render :index, :quotes => quotes
  end

  def update_quote
    quote = FileModel.find(1)
    quote['submitter'] = "Binod Mainali"
    FileModel.save quote, 1
    render :json_quote, :obj => quote
  end

  def new_quote
    attrs = {
      "submitter" => "Mainali",
      "quote" => "A picture is worth a thousand words",
      "attribution" => "Me"
    }
    m = FileModel.create attrs
    render :json_quote, :obj => m
  end

  def exception
    raise "Looks like you are lost"
  end
end