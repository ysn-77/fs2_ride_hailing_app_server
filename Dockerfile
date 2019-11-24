# Base image
FROM ruby:2.6.5-stretch

# Copy our application code
COPY . /application

# Change to the application's directory
WORKDIR /application

# Install dependencies
RUN bundle install \
  && chmod +x /application/entry-point.sh

ENTRYPOINT ["./entry-point.sh"]

# The port
EXPOSE 3000

# Start the main process.
CMD ["rails", "server", "-b", "0.0.0.0"]