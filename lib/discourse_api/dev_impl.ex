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

  def get_user_by_id(_) do
    {:ok,
     %{
       "avatar_template" => "https://avatars.discourse.org/v4/letter/b/ooiib/{size}.png",
       "approved_by" => nil,
       "badge_count" => 0,
       "username_lower" => "bloop",
       "title" => nil,
       "last_emailed_age" => 15_639_246.71726918,
       "username" => "bloop",
       "silenced_by" => nil,
       "full_suspend_reason" => nil,
       "can_disable_second_factor" => true,
       "posts_read_count" => 0,
       "last_emailed_at" => "2020-10-24T13:00:12.064Z",
       "can_deactivate" => true,
       "topic_count" => 0,
       "staged" => false,
       "moderator" => false,
       "can_be_deleted" => true,
       "can_send_activation_email" => true,
       "id" => 31,
       "trust_level" => 0,
       "manual_locked_trust_level" => nil,
       "flag_level" => 0,
       "bounce_score" => 0.0,
       "active" => true,
       "can_activate" => false,
       "can_grant_moderation" => true,
       "can_grant_admin" => true,
       "topics_entered" => 0,
       "like_given_count" => 0,
       "api_key_count" => 0,
       "last_seen_at" => "2020-10-27T13:01:13.923Z",
       "flags_given_count" => 0,
       "can_delete_all_posts" => true,
       "silence_reason" => nil,
       "post_count" => 0,
       "can_view_action_logs" => true,
       "created_at_age" => 46_993_411.59346038,
       "registration_ip_address" => nil,
       "reset_bounce_score_after" => nil,
       "created_at" => "2018-10-26T14:56:07.188Z",
       "name" => "Blobl",
       "user_notes_count" => 0,
       "can_revoke_admin" => false,
       "last_seen_age" => 46_913_954.85759427,
       "warnings_received_count" => 0,
       "can_be_anonymized" => true,
       "admin" => false,
       "can_impersonate" => true,
       "primary_group_id" => nil,
       "flags_received_count" => 0,
       "akismet_state" => nil,
       "suspended_by" => nil,
       "ip_address" => "10.10.10.10",
       "can_revoke_moderation" => false,
       "single_sign_on_record" => %{
         "created_at" => "2019-10-28T12:57:17.253Z",
         "external_avatar_url" => nil,
         "external_card_background_url" => nil,
         "external_email" => "email@gmail.com",
         "external_id" => "990098-a329-4c37-998b-1c96878fb4c4",
         "external_name" => nil,
         "external_profile_background_url" => nil,
         "external_username" => "bloop",
         "last_payload" =>
           "email=emailgmail.com&external_id=990098-a329-4c37-998b-1c96878fb4c4&nonce=f50822253e9877654de2cd0b98468&require_activation=false&username=blobl",
         "updated_at" => "2018-10-26T14:58:20.177Z",
         "user_id" => 31
       },
       "groups" => [
         %{
           "allow_membership_requests" => false,
           "automatic" => true,
           "automatic_membership_email_domains" => nil,
           "automatic_membership_retroactive" => false,
           "bio_cooked" => nil,
           "bio_excerpt" => nil,
           "bio_raw" => nil,
           "can_see_members" => true,
           "default_notification_level" => 3,
           "display_name" => "Blue Member",
           "flair_bg_color" => nil,
           "flair_color" => nil,
           "flair_url" => nil,
           "full_name" => nil,
           "grant_trust_level" => nil,
           "has_messages" => false,
           "id" => 10,
           "incoming_email" => nil,
           "members_visibility_level" => 0,
           "membership_request_template" => nil,
           "mentionable_level" => 2,
           "messageable_level" => 1,
           "name" => "trust_level_0",
           "primary_group" => false,
           "public_admission" => false,
           "public_exit" => false,
           "publish_read_state" => false,
           "title" => nil,
           "user_count" => 1570,
           "visibility_level" => 1
         }
       ],
       "private_topics_count" => 3,
       "days_visited" => 2,
       "like_count" => 0,
       "time_read" => 0
     }}
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
