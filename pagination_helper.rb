# TODO: complete this class

class PaginationHelper
  attr_reader :collection, :items_per_page
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    raise "collection not an array" if not collection.is_a?(Array)
    raise "items per page isn't an integer" if not items_per_page.is_a? integer
    @collection = collection
    @items_per_page = items_per_page
    @pages = set_pages
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.size
  end

  # returns the number of pages
  def page_count
    (item_count/@items_per_page).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    return (-1) if((page_index < 0) || (page_index > (page_count - 1)))
    return pages[page_index].size
  end

  def set_pages
    temp_collection = @collection
    pages = []
    while(!temp_collection.empty?) do
      new_page = []
      @items_per_page.times do
        new_page << temp_collection.shift
      end
      pages << new_page
    end
    pages
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return (-1) if((item_index < 0) || (item_index > (item_count.size - 1)))

  end
end
