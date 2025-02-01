# Use an official PHP CLI image with cURL
FROM php:8.1-cli

# Set working directory
WORKDIR /app

# Copy the PHP bot file to the container
COPY true12g.php /app/bot.php

# Install required PHP extensions (cURL)
RUN docker-php-ext-install curl

# Set bot script as executable
RUN chmod +x /app/bot.php

# Run the bot continuously
CMD ["php", "/app/bot.php"]
