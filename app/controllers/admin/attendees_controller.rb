module Admin
  class AttendeesController < Admin::ApplicationController
    def new
      event = Event.closest
      resource = Attendee.new({ events: [event], company: event.company })
      render locals: {
        page: Administrate::Page::Form.new(dashboard, resource),
      }
    end

    def generate_badge
      resource = Attendee.find(params[:attendee_id])
      render locals: { resource: resource }
    end

    # Override this method to specify custom lookup behavior.
    # This will be used to set the resource for the `show`, `edit`, and `update`
    # actions.
    #
    # def find_resource(param)
    #   Foo.find_by!(slug: param)
    # end

    # Override this if you have certain roles that require a subset
    # this will be used to set the records shown on the `index` action.
    #
    # def scoped_resource
    #  if current_user.super_admin?
    #    resource_class
    #  else
    #    resource_class.with_less_stuff
    #  end
    # end

    # See https://administrate-prototype.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
