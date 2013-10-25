#-*- coding: utf-8 -*-

Plugin.create :the_daku_on do
  command(:the_daku_on,
          name: 'The 濁音',
          condition: lambda{ |opt| true },
          visible: true,
          role: :postbox) do |opt|
    postbox = Gtk::PostBox.list[0]
    postbox.widget_post.buffer.text = postbox.widget_post.buffer.text.gsub(/([\p{Word}\-~〜!！?？])/u, '\1゛')
  end
end

