class SchoolSweeper < ActionController::Caching::Sweeper
  observe School

  def after_create(school)
    expire_cache_for(school)
  end
  
  # If our sweeper detects that a school was updated call this
  def after_update(school)
    expire_cache_for(school)
  end
  
  # If our sweeper detects that a school was deleted call this
  def after_destroy(school)
    expire_cache_for(school)
  end
  
#  def expire_cache_for(record)
#    # Expire the footer content
#    expire_action :controller => 'courses', :action => 'show', :id => record.course_id
#  end  
          
end