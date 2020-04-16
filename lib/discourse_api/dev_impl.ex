defmodule DiscourseApi.DevImpl do
  @moduledoc """
    DiscourseApi impl mock testing
  """

  def get_active_user(_) do
    {:ok,
     [
       %{
         "active" => true,
         "admin" => true,
         "avatar_template" => "string",
         "blocked" => true,
         "created_at" => "string",
         "created_at_age" => "string",
         "days_visited" => 0,
         "email" => "string",
         "flag_level" => 0,
         "id" => 0,
         "last_emailed_age" => "string",
         "last_emailed_at" => "string",
         "last_seen_age" => "string",
         "last_seen_at" => "string",
         "moderator" => true,
         "post_count" => 0,
         "posts_read_count" => 0,
         "staged" => true,
         "suspended" => %{},
         "suspended_at" => %{},
         "suspended_till" => %{},
         "time_read" => "string",
         "title" => "string",
         "topics_entered" => 0,
         "trust_level" => 0,
         "trust_level_locked" => true,
         "username" => "string",
         "username_lower" => "string"
       }
     ]}
  end

  def get_user_by_external_id(_) do
    {:ok,
     %{
       "user" => %{
         "admin" => true,
         "avatar_template" => "string",
         "badge_count" => 0,
         "can_edit" => true,
         "can_edit_email" => true,
         "can_edit_name" => true,
         "can_edit_username" => true,
         "can_send_private_message_to_user" => true,
         "can_send_private_messages" => true,
         "card_badge" => %{},
         "created_at" => "string",
         "custom_fields" => %{},
         "featured_user_badge_ids" => [],
         "groups" => [
           %{
             "alias_level" => 0,
             "automatic" => true,
             "automatic_membership_email_domains" => %{},
             "automatic_membership_retroactive" => true,
             "flair_bg_color" => %{},
             "flair_color" => %{},
             "flair_url" => %{},
             "grant_trust_level" => %{},
             "has_messages" => true,
             "id" => 0,
             "is_member" => true,
             "mentionable" => true,
             "name" => "string",
             "notification_level" => %{},
             "primary_group" => true,
             "title" => %{},
             "user_count" => 0,
             "visible" => true
           }
         ],
         "id" => 0,
         "invited_by" => %{},
         "last_posted_at" => "string",
         "last_seen_at" => "string",
         "moderator" => true,
         "name" => %{},
         "pending_count" => 0,
         "primary_group_flair_bg_color" => %{},
         "primary_group_flair_color" => %{},
         "primary_group_flair_url" => %{},
         "primary_group_name" => %{},
         "profile_view_count" => 0,
         "title" => %{},
         "trust_level" => 0,
         "uploaded_avatar_id" => %{},
         "username" => "string",
         "website_name" => %{}
       },
       "user_badges" => []
     }}
  end

  def silence(_, _, _, _) do
    {:ok,
     %{
       "silence" => %{
         "silenced" => true,
         "silenced_reason" => "string",
         "silenced_till" => "string",
         "silenced_at" => "string",
         "silenced_by" => %{
           "id" => 0,
           "username" => "string",
           "avatar_template" => "string"
         }
       }
     }}
  end

  def unsilence(_) do
    {:ok,
     %{
       "success" => "string"
     }}
  end
end
