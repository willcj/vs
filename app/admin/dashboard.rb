# coding: utf-8
ActiveAdmin.register_page "Dashboard" do
  menu :priority => 1
  content :title => proc{ I18n.t("active_admin.dashboard") } do

    columns do

      column do
        panel "Monitor Result" do
          table_for MonitorResult.order('id desc').limit(20) do
            column(:title)   {|mr| link_to(mr.Title, admin_monitor_result_path(mr)) }
            column(:duration)   {|mr| mr.Duration }
            column(:VideoKey)   {|mr| mr.VideoKey }
          end
        end
      end

      column do
        panel "Monitor Task" do
          table_for MonitorTask.order('id desc').limit(10).each do |mt|
            column(:type)    {|mt| mt.mt_type }
            column(:name)    {|mt| mt.name }
            column(:engine)    {|mt| mt.engine }
            column(:status)    {|mt| mt.status }
          end
        end
      end

      column do
        panel "Monitor Video" do
          table_for MonitorVideo.order('id desc').limit(10).each do |mt|
            column(:name)    {|mt| mt.name }
            column(:description)    {|mt| mt.description }
            column(:keyword)    {|mt| mt.description }
          end
        end
      end



    end # columns

    # columns do

    #   column do
    #     div do
    #       br
    #       text_node %{<iframe src="https://rpm.newrelic.com/public/charts/6VooNO2hKWB" width="500" height="300" scrolling="no" frameborder="no"></iframe>}.html_safe
    #     end
    #   end


    #   column do
    #     panel "AdminUser" do
    #       table_for AdminUser.order('id desc').limit(10).each do |au|
    #         column(:email)    {|au| link_to(au.email, admin_admin_user_path(au)) }
    #         column(:created_at)    {|au| au.created_at }
    #       end
    #     end
    #   end

    #   # column do
    #   #   panel "ActiveAdmin Demo" do
    #   #     div do
    #   #       render('/admin/sidebar_links', :model => 'dashboard')
    #   #     end
    #   #   end
    #   # end

    # end # columns

    # Define your dashboard sections here. Each block will be
    # rendered on the dashboard in the context of the view. So just
    # return the content which you would like to display.

    # The dashboard is organized in rows and columns, where each row
    # divides the space for its child columns equally.

    # To start a new row, open a new 'columns' block, and to start a
    # new column, open a new 'colum' block. That way, you can exactly
    # define the position for each content div.

    # == Simple Dashboard Column
    # Here is an example of a simple dashboard column
    #
    #   column do
    #     panel "Recent Posts" do
    #       content_tag :ul do
    #         Post.recent(5).collect do |post|
    #           content_tag(:li, link_to(post.title, admin_post_path(post)))
    #         end.join.html_safe
    #       end
    #     end
    #   end

    # == Render Partials
    # The block is rendererd within the context of the view, so you can
    # easily render a partial rather than build content in ruby.
    #
    #   column do
    #     panel "Recent Posts" do
    #       render 'recent_posts' # => this will render /app/views/admin/dashboard/_recent_posts.html.erb
    #     end
    #   end

  end # content
end