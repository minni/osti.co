=begin
RefinerySetting.all.each do |s|
  puts "r = RefinerySetting.find_or_create_by_name '#{s.name}'"
  result  = "r.update_attributes :value => YAML.load(\"#{s.value.to_yaml.gsub("\n", '\n').gsub('"', '\\"')}\")"

  result += ", :callback_proc_as_string" + " => '#{s.callback_proc_as_string}'" if s.callback_proc_as_string
  result += ", :destroyable"             + " => '#{s.destroyable            }'" if s.destroyable           
  result += ", :form_value_type"         + " => '#{s.form_value_type        }'" if s.form_value_type       
  result += ", :restricted"              + " => '#{s.restricted             }'" if s.restricted            
  result += ", :scoping"                 + " => '#{s.scoping                }'" if s.scoping               
  puts result
end; nil
=end
class CreateOsticoDefaults < ActiveRecord::Migration
  def self.up
    r = RefinerySetting.find_or_create_by_name 'dragonfly_secret'
    r.update_attributes :value => YAML.load("--- 02c9c1c726a2539ec73a0bfb1a837eecb51f644ea80e4d10\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_default_frontend_locale'
    r.update_attributes :value => YAML.load("--- :en\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'approximate_ascii'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area', :restricted => 'true', :scoping => 'pages'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_default_locale'
    r.update_attributes :value => YAML.load("--- :en\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_enabled'
    r.update_attributes :value => YAML.load("--- true\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_locales'
    r.update_attributes :value => YAML.load("--- \n:en: English\n:fr: \"Fran\xC3\xA7ais\"\n:nl: Nederlands\n:\"pt-BR\": \"Portugu\xC3\xAAs\"\n:da: Dansk\n:nb: \"Norsk Bokm\xC3\xA5l\"\n:sl: Slovenian\n:es: \"Espa\xC3\xB1ol\"\n:it: Italiano\n:de: Deutsch\n:lv: Latviski\n:ru: \"\xD0\xA0\xD1\x83\xD1\x81\xD1\x81\xD0\xBA\xD0\xB8\xD0\xB9\"\n:sv: Svenska\n:pl: Polski\n:\"zh-CN\": Simplified Chinese\n:\"zh-TW\": Traditional Chinese\n:el: \"\xCE\x95\xCE\xBB\xCE\xBB\xCE\xB7\xCE\xBD\xCE\xB9\xCE\xBA\xCE\xAC\"\n:rs: Srpski\n:cs: \"\xC4\x8Cesky\"\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'site_name'
    r.update_attributes :value => YAML.load("--- Osti.co\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'use_resource_caching'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'use_google_ajax_libraries'
    r.update_attributes :value => YAML.load("--- false\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_current_locale'
    r.update_attributes :value => YAML.load("--- :it\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'activity_show_limit'
    r.update_attributes :value => YAML.load("--- 7\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'image_views'
    r.update_attributes :value => YAML.load("--- \n- :list\n- :grid\n"), :destroyable => 'true', :form_value_type => 'text_area', :restricted => 'true'
    r = RefinerySetting.find_or_create_by_name 'preferred_image_view'
    r.update_attributes :value => YAML.load("--- :grid\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'i18n_translation_frontend_locales'
    r.update_attributes :value => YAML.load("--- \n- :en\n"), :callback_proc_as_string => '::Refinery::I18n.setup!', :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'refinery'
    r = RefinerySetting.find_or_create_by_name 'use_marketable_urls'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'pages'
    r = RefinerySetting.find_or_create_by_name 'superuser_can_assign_roles'
    r.update_attributes :value => YAML.load("--- false\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'page_title'
    r.update_attributes :value => YAML.load("--- \n:chain_page_title: false\n:ancestors: \n  :separator: \" | \"\n  :class: ancestors\n  :tag: span\n:page_title: \n  :class: \n  :tag: \n  :wrap_if_not_chained: false\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'authenticity_token_on_frontend'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area', :restricted => 'true'
    r = RefinerySetting.find_or_create_by_name 'frontend_refinery_stylesheets_enabled'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'new_page_parts'
    r.update_attributes :value => YAML.load("--- false\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'theme'
    r.update_attributes :value => YAML.load("--- ostico\n"), :destroyable => 'true'
    r = RefinerySetting.find_or_create_by_name 'refinery_menu_cache_action_suffix'
    r.update_attributes :value => YAML.load("--- ostico_site_menu\n"), :destroyable => 'true'
    r = RefinerySetting.find_or_create_by_name 'default_page_parts'
    r.update_attributes :value => YAML.load("--- \n- Body\n- Side Body\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'comment_moderation'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area', :restricted => 'true', :scoping => 'blog'
    r = RefinerySetting.find_or_create_by_name 'multi_level_portfolio'
    r.update_attributes :value => YAML.load("--- false\n"), :callback_proc_as_string => '::ActionController::Routing::Routes.reload!', :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'google_maps_api_key'
    r.update_attributes :value => YAML.load("--- \"\"\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'comment_notification_recipients'
    r.update_attributes :value => YAML.load("--- toma@min.iyt\n"), :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'blog'
    r = RefinerySetting.find_or_create_by_name 'blog_posts_per_page'
    r.update_attributes :value => YAML.load("--- 10\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'share_this_key'
    r.update_attributes :value => YAML.load("--- xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\n"), :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'blog'
    r = RefinerySetting.find_or_create_by_name 'comments_allowed'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area', :scoping => 'blog'
    r = RefinerySetting.find_or_create_by_name 'blog_post_teaser_length'
    r.update_attributes :value => YAML.load("--- 250\n"), :destroyable => 'true', :form_value_type => 'text_area', :restricted => 'true'
    r = RefinerySetting.find_or_create_by_name 'portfolio_has_no_index'
    r.update_attributes :value => YAML.load("--- true\n"), :destroyable => 'true', :form_value_type => 'text_area'
    r = RefinerySetting.find_or_create_by_name 'user_image_sizes'
    r.update_attributes :value => YAML.load("--- \n:small: 110x110>\n:medium: 225x255>\n:large: 450x450>\n"), :form_value_type => 'text_area'
  end
  
  def self.down
    
  end
end
