module StoryGem
  class Base
    attr_reader :attrs
    alias to_hash attrs

    # Define methods that retrieve the value from an initialized instance variable Hash, using the attribute as a key
    #
    # @overload self.attr_reader(attr)
    #   @param attr [Symbol]
    # @overload self.attr_reader(attrs)
    #   @param attrs [Array<Symbol>]
    def self.attr_reader(*attrs)
      attrs.each do |attribute|
        class_eval do
          define_method attribute do
            @attrs[attribute.to_sym]
          end
        end
      end
    end

    def initialize(attrs={})
      @attrs = {}
      attrs.each do |k,v|
        @attrs[k.to_sym] = v
      end
    end

    def self.fetch_or_new(attrs={})
      return unless attrs
      return new(attrs)
    end

    def self.from_response(response={})
      fetch_or_new(response.parsed)
    end

  end
end
