class AuthenticateUser
  def initialize(email, password)
    puts email
    @email = email
    @password = password
  end

  # Service entry point
  def call
    JsonWebToken.encode(user_id: user.id) if user
  end

  private

  attr_reader :email, :password

  # verify user credentials
  def user
    puts @email

    user = User.find_by(email: "a@l.com")
    return user if user && user.authenticate("b")
    # raise Authentication error if credentials are invalid
    raise(ExceptionHandler::AuthenticationError, Message.invalid_credentials)
  end
end