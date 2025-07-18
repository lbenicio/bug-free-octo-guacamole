# Stage 1: Build the Next.js application
FROM python:3.11-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY docs/requirements.txt ./

# Install dependencies
RUN python3 -m pip install --upgrade pip setuptools
RUN python3 -m pip install --upgrade sphinx
RUN python3 -m pip install --upgrade sphinx-book-theme
RUN python3 -m pip install -r ./requirements.txt

# Copy the rest of the application source code
COPY docs/source .

# Build the Next.js application for static export
RUN python3 -m sphinx -T -b html -d _build/doctrees -D language=en . ./html

# Stage 2: Serve the static files with Nginx
FROM nginx:1.25-alpine

# Copy the static files from the builder stage
COPY --from=builder /app/html /usr/share/nginx/html

# Copy the custom Nginx configuration
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
