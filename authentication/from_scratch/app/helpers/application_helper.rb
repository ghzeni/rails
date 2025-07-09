# frozen_string_literal: true

module ApplicationHelper
    def destroy_link(resource)
        link_to "delete", resource, data: {
          turbo_method: :delete,
          turbo_confirm: "Are you sure?"
        }
    end
end
