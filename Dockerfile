
# Use an official PHP CLI image with cURL
FROM php:8.1-cli

# Set working directory
WORKDIR /app

# Install required dependencies and PHP extensions (cURL)
RUN apt-get update && apt-get install -y \
    libcurl4-openssl-dev \
    pkg-config \
    libssl-dev \
    && docker-php-ext-install curl

# Copy the PHP bot file to the container
COPY true12g.php /app/bot.php

# Set bot script as executable
RUN chmod +x /app/bot.php

# Run the bot continuously
CMD ["php", "/app/bot.php"]
