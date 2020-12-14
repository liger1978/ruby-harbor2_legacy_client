=begin
#Harbor API

#These APIs provide services for manipulating Harbor project.

OpenAPI spec version: 2.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module Harbor2LegacyClient
  # Registration represents a named configuration for invoking a scanner via its adapter. 
  class ScannerRegistration
    # The unique identifier of this registration.
    attr_accessor :uuid

    # The name of this registration.
    attr_accessor :name

    # An optional description of this registration.
    attr_accessor :description

    # A base URL of the scanner adapter
    attr_accessor :url

    # Indicate whether the registration is enabled or not
    attr_accessor :disabled

    # Indicate if the registration is set as the system default one
    attr_accessor :is_default

    # Indicate the healthy of the registration
    attr_accessor :health

    # Specify what authentication approach is adopted for the HTTP communications. Supported types Basic\", \"Bearer\" and api key header \"X-ScannerAdapter-API-Key\" 
    attr_accessor :auth

    # An optional value of the HTTP Authorization header sent with each request to the Scanner Adapter API. 
    attr_accessor :access_credential

    # Indicate if skip the certificate verification when sending HTTP requests
    attr_accessor :skip_cert_verify

    # Indicate whether use internal registry addr for the scanner to pull content or not
    attr_accessor :use_internal_addr

    # Optional property to describe the name of the scanner registration
    attr_accessor :adapter

    # Optional property to describe the vendor of the scanner registration
    attr_accessor :vendor

    # Optional property to describe the version of the scanner registration
    attr_accessor :version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'uuid' => :'uuid',
        :'name' => :'name',
        :'description' => :'description',
        :'url' => :'url',
        :'disabled' => :'disabled',
        :'is_default' => :'is_default',
        :'health' => :'health',
        :'auth' => :'auth',
        :'access_credential' => :'access_credential',
        :'skip_cert_verify' => :'skip_certVerify',
        :'use_internal_addr' => :'use_internal_addr',
        :'adapter' => :'adapter',
        :'vendor' => :'vendor',
        :'version' => :'version'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'uuid' => :'String',
        :'name' => :'String',
        :'description' => :'String',
        :'url' => :'String',
        :'disabled' => :'BOOLEAN',
        :'is_default' => :'BOOLEAN',
        :'health' => :'String',
        :'auth' => :'String',
        :'access_credential' => :'String',
        :'skip_cert_verify' => :'BOOLEAN',
        :'use_internal_addr' => :'BOOLEAN',
        :'adapter' => :'String',
        :'vendor' => :'String',
        :'version' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'uuid')
        self.uuid = attributes[:'uuid']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.has_key?(:'disabled')
        self.disabled = attributes[:'disabled']
      else
        self.disabled = false
      end

      if attributes.has_key?(:'is_default')
        self.is_default = attributes[:'is_default']
      else
        self.is_default = false
      end

      if attributes.has_key?(:'health')
        self.health = attributes[:'health']
      else
        self.health = ''
      end

      if attributes.has_key?(:'auth')
        self.auth = attributes[:'auth']
      else
        self.auth = ''
      end

      if attributes.has_key?(:'access_credential')
        self.access_credential = attributes[:'access_credential']
      end

      if attributes.has_key?(:'skip_certVerify')
        self.skip_cert_verify = attributes[:'skip_certVerify']
      else
        self.skip_cert_verify = false
      end

      if attributes.has_key?(:'use_internal_addr')
        self.use_internal_addr = attributes[:'use_internal_addr']
      else
        self.use_internal_addr = false
      end

      if attributes.has_key?(:'adapter')
        self.adapter = attributes[:'adapter']
      end

      if attributes.has_key?(:'vendor')
        self.vendor = attributes[:'vendor']
      end

      if attributes.has_key?(:'version')
        self.version = attributes[:'version']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          uuid == o.uuid &&
          name == o.name &&
          description == o.description &&
          url == o.url &&
          disabled == o.disabled &&
          is_default == o.is_default &&
          health == o.health &&
          auth == o.auth &&
          access_credential == o.access_credential &&
          skip_cert_verify == o.skip_cert_verify &&
          use_internal_addr == o.use_internal_addr &&
          adapter == o.adapter &&
          vendor == o.vendor &&
          version == o.version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [uuid, name, description, url, disabled, is_default, health, auth, access_credential, skip_cert_verify, use_internal_addr, adapter, vendor, version].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
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
        DateTime.parse(value)
      when :Date
        Date.parse(value)
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
      else # model
        temp_model = Harbor2LegacyClient.const_get(type).new
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
