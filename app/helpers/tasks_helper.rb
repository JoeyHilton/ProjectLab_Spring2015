module TasksHelper
  def complete(link)
    if link.votes >= 0
      content_tag :span, link.votes, class: ['label','label-info'] 
    else  
      content_tag :span, link.votes, class: ['label','label-warning'] 
    end  
  end
end
