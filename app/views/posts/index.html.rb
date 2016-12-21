<div class="col-md-12">

  <h2 class="text-center"> 我发表过的文章 </h2>

  <table class="table">
    <thead>
      <tr>
        <th> Content </th>
        <th> Group Name </th>
        <th> Last Update </th>
        <th colspan="2"></th>
      </tr>
    </thead>

    <tbody>
      <% @posts.each do |post| %>
        <tr>
          <td> <%= post.content %> </td>
          <td> <%= post.group.title %> </td>
          <td> <%= post.updated_at %> </td>
          <td> <%= link_to('Edit', edit_group_post_path(post.group, post), class: "btn btn-default btn-xs") %></td>
          <td> <%= link_to('Delete', group_post_path(post.group, post), method: :delete, data: { confirm: "Are you sure?" }, class: "btn btn-default btn-xs") %></td>
        </tr>
      <% end %>
    </tbody>
  </table>
</div>
