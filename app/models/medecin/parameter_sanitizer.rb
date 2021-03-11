class Medecin::ParameterSanitizer < Devise::ParameterSanitizer
  def initialize(*)
    super
    permit(:account_update, keys: [:ville, :telephone, :code_postal, :adresse])
  end
end