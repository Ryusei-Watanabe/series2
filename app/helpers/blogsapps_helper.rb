module BlogsappsHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'create'
      confirm_blogsapps_path
    elsif action_name == 'edit'
      blogsapp_path
    end
  end
end
