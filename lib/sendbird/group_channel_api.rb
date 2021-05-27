module Sendbird
  class GroupChannelApi
    extend Client
    ENDPOINT = 'group_channels'.freeze

    class << self
      def create(body)
        post(path: build_url, body: body)
      end

      def list(params={})
        get(path: build_url, params: params)
      end

      def update(channel_url, body)
        put(path: build_url(channel_url), body: body)
      end

      def destroy(channel_url)
        delete(path: build_url(channel_url))
      end

      def view(channel_url, params={})
        get(path: build_url(channel_url), params: params)
      end

      def members(channel_url, params={})
        get(path: build_url(channel_url, 'members'), params: params)
      end

      def is_member?(channel_url, user_id)
        get(path: build_url(channel_url, 'members', user_id))
      end

      def invite(channel_url, body)
        post(path: build_url(channel_url, 'invite'), body: body)
      end

      def hide(channel_url, body)
        put(path: build_url(channel_url, 'hide'), body: body)
      end

      def freeze(channel_url, body)
        put(path: build_url(channel_url, 'freeze'), body: body)
      end

      def leave(channel_url, body)
        put(path: build_url(channel_url, 'leave'), body: body)
      end

      def ban_user(channel_url, body)
        post(path: build_url(channel_url, 'ban'), body: body)
      end

      def ban_list(channel_url, params={})
        get(path: build_url(channel_url, 'ban'), params: params)
      end

      def ban_update(channel_url, user_id, body)
        put(path: build_url(channel_url, 'ban', user_id), body: body)
      end

      def ban_delete(channel_url, user_id)
        delete(path: build_url(channel_url, 'ban', user_id))
      end

      def ban_view(channel_url, user_id)
        get(path: build_url(channel_url, 'ban', user_id))
      end

      def operators_delete(channel_url, params={})
        delete(path: build_url(channel_url, 'operators'), params: params)
      end
    end
  end
end
