module ApplicationHelper
    def bootstrap_class_for(flash_type)
        case flash_type.to_s
        when "notice" then "alert-info"
        when "success" then "alert-success"
        when "error" then "alert-danger"
        when "alert" then "alert-warning"
        else "alert-#{flash_type}"
        end
      end
end
