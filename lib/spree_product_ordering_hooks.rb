class SpreeProductOrderingHooks < Spree::ThemeSupport::HookListener
  Deface::Override.new(:virtual_path => "admin/shared/_product_sub_menu",
                       :name => "converted_admin_product_sub_tabs_239949077",
                       :insert_bottom => "[data-hook='admin_product_sub_tabs'], #admin_product_sub_tabs[data-hook]",
                       :partial => "admin/hooks/sub_menu_tab",
                       :disabled => false)

end
