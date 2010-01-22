class CourseSweeper < ActionController::Caching::Sweeper
  observe Course
  
  def after_create(course)
    expire_cache_for(course)
  end
  
  # If our sweeper detects that a course was updated call this
  def after_update(course)
    expire_cache_for(course)
  end
  
  def after_show(course)
    expire_cache_for(course)
  end
  
  # If our sweeper detects that a course was deleted call this
  def after_destroy(course)
    expire_cache_for(course)
  end
  
#  private
#  def expire_cache_for(record)
#    # Expire the footer content
#    puts 'passou'
#    expire_action :controller => 'courses', :action => 'show', :id => record.id
#  end  
          
end