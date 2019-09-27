require 'celluloid'

class Worker
  include Celluloid

  Thread.abort_on_exception = true
  
  def process_page(url)
    puts url
  end
end

pages_to_crawl = %w( index about contact products ... )
worker_pool    = Worker.pool(size: 5)
# If you need to collect the return values check out 'futures'
pages_to_crawl.each do |page|
   worker_pool.process_page(page)
end