 #
 # --------------------------------------------------------------------------------------------------------------------
 # <copyright company="Aspose Pty Ltd" file="word_processing_options.rb">
 #   Copyright (c) Aspose Pty Ltd
 # </copyright>
 # <summary>
 #  Permission is hereby granted, free of charge, to any person obtaining a copy
 #  of this software and associated documentation files (the "Software"), to deal
 #  in the Software without restriction, including without limitation the rights
 #  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 #  copies of the Software, and to permit persons to whom the Software is
 #  furnished to do so, subject to the following conditions:
 #
 #  The above copyright notice and this permission notice shall be included in all
 #  copies or substantial portions of the Software.
 #
 #  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 #  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 #  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 #  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 #  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 #  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 #  SOFTWARE.
 # </summary>
 # --------------------------------------------------------------------------------------------------------------------
 #

require 'date'

module GroupDocsViewerCloud
  # Provides options for rendering word processing documents
  class WordProcessingOptions

    # Enables tracked changes (revisions) rendering
    attr_accessor :render_tracked_changes

    # Left page margin (for HTML rendering only)
    attr_accessor :left_margin

    # Right page margin (for HTML rendering only)
    attr_accessor :right_margin

    # Top page margin (for HTML rendering only)
    attr_accessor :top_margin

    # Bottom page margin (for HTML rendering only)
    attr_accessor :bottom_margin

    # The size of the page.
    attr_accessor :page_size

    # This option enables kerning and other OpenType Features when rendering Arabic, Hebrew, Indian Latin-based, or Cyrillic-based scripts.
    attr_accessor :enable_open_type_features

    # When rendering to HTML or PDF, you can set this option to `true` to disable navigation from the table of contents. For HTML rendering, `a` tags with relative links will be replaced with `span` tags, removing functionality but preserving visual appearance. For PDF rendering, the table of contents will be rendered as plain text without links to document sections.             
    attr_accessor :unlink_table_of_contents

    # Determines if fields of certain types should be updated before saving the input WordProcessing document to the HTML, PDF, PNG, or JPEG output formats. Default value for this property is true — fields will be updated before saving.             
    attr_accessor :update_fields
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'render_tracked_changes' => :'RenderTrackedChanges',
        :'left_margin' => :'LeftMargin',
        :'right_margin' => :'RightMargin',
        :'top_margin' => :'TopMargin',
        :'bottom_margin' => :'BottomMargin',
        :'page_size' => :'PageSize',
        :'enable_open_type_features' => :'EnableOpenTypeFeatures',
        :'unlink_table_of_contents' => :'UnlinkTableOfContents',
        :'update_fields' => :'UpdateFields'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'render_tracked_changes' => :'BOOLEAN',
        :'left_margin' => :'Float',
        :'right_margin' => :'Float',
        :'top_margin' => :'Float',
        :'bottom_margin' => :'Float',
        :'page_size' => :'String',
        :'enable_open_type_features' => :'BOOLEAN',
        :'unlink_table_of_contents' => :'BOOLEAN',
        :'update_fields' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.key?(:'RenderTrackedChanges')
        self.render_tracked_changes = attributes[:'RenderTrackedChanges']
      end

      if attributes.key?(:'LeftMargin')
        self.left_margin = attributes[:'LeftMargin']
      end

      if attributes.key?(:'RightMargin')
        self.right_margin = attributes[:'RightMargin']
      end

      if attributes.key?(:'TopMargin')
        self.top_margin = attributes[:'TopMargin']
      end

      if attributes.key?(:'BottomMargin')
        self.bottom_margin = attributes[:'BottomMargin']
      end

      if attributes.key?(:'PageSize')
        self.page_size = attributes[:'PageSize']
      end

      if attributes.key?(:'EnableOpenTypeFeatures')
        self.enable_open_type_features = attributes[:'EnableOpenTypeFeatures']
      end

      if attributes.key?(:'UnlinkTableOfContents')
        self.unlink_table_of_contents = attributes[:'UnlinkTableOfContents']
      end

      if attributes.key?(:'UpdateFields')
        self.update_fields = attributes[:'UpdateFields']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = []
      if @render_tracked_changes.nil?
        invalid_properties.push("invalid value for 'render_tracked_changes', render_tracked_changes cannot be nil.")
      end

      if @left_margin.nil?
        invalid_properties.push("invalid value for 'left_margin', left_margin cannot be nil.")
      end

      if @right_margin.nil?
        invalid_properties.push("invalid value for 'right_margin', right_margin cannot be nil.")
      end

      if @top_margin.nil?
        invalid_properties.push("invalid value for 'top_margin', top_margin cannot be nil.")
      end

      if @bottom_margin.nil?
        invalid_properties.push("invalid value for 'bottom_margin', bottom_margin cannot be nil.")
      end

      if @page_size.nil?
        invalid_properties.push("invalid value for 'page_size', page_size cannot be nil.")
      end

      if @enable_open_type_features.nil?
        invalid_properties.push("invalid value for 'enable_open_type_features', enable_open_type_features cannot be nil.")
      end

      if @unlink_table_of_contents.nil?
        invalid_properties.push("invalid value for 'unlink_table_of_contents', unlink_table_of_contents cannot be nil.")
      end

      if @update_fields.nil?
        invalid_properties.push("invalid value for 'update_fields', update_fields cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @render_tracked_changes.nil?
      return false if @left_margin.nil?
      return false if @right_margin.nil?
      return false if @top_margin.nil?
      return false if @bottom_margin.nil?
      return false if @page_size.nil?
      page_size_validator = EnumAttributeValidator.new('String', ["Unspecified", "Letter", "Ledger", "A0", "A1", "A2", "A3", "A4"])
      return false unless page_size_validator.valid?(@page_size)
      return false if @enable_open_type_features.nil?
      return false if @unlink_table_of_contents.nil?
      return false if @update_fields.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(page_size)
      validator = EnumAttributeValidator.new('String', ["Unspecified", "Letter", "Ledger", "A0", "A1", "A2", "A3", "A4"])
      if page_size.to_i == 0
        unless validator.valid?(page_size)
          raise ArgumentError, "invalid value for 'page_size', must be one of #{validator.allowable_values}."
        end
        @page_size = page_size
      else
        @page_size = validator.allowable_values[page_size.to_i]
      end
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if self.equal?(other)
      self.class == other.class &&
          render_tracked_changes == other.render_tracked_changes &&
          left_margin == other.left_margin &&
          right_margin == other.right_margin &&
          top_margin == other.top_margin &&
          bottom_margin == other.bottom_margin &&
          page_size == other.page_size &&
          enable_open_type_features == other.enable_open_type_features &&
          unlink_table_of_contents == other.unlink_table_of_contents &&
          update_fields == other.update_fields
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [render_tracked_changes, left_margin, right_margin, top_margin, bottom_margin, page_size, enable_open_type_features, unlink_table_of_contents, update_fields].hash
    end

    # Downcases first letter.
    # @return downcased string
    def uncap(str)
      str[0, 1].downcase + str[1..-1]
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        pname = uncap(self.class.attribute_map[key]).intern
        value = attributes[pname]
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not                    
          if value.is_a?(Array)
            self.send("#{key}=", value.map { |v| _deserialize($1, v) })
          end
        elsif !value.nil?
          self.send("#{key}=", _deserialize(type, value))
        end
        # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        Date.parse value
      when :Date
        Date.parse value
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else
      # model
        temp_model = GroupDocsViewerCloud.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
