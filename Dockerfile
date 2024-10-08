FROM golang:1.23.1-alpine as builder


# Use the official Golang image as a build stage
FROM golang:1.23.1-alpine as builder

# Set the Current Working Directory inside the container
WORKDIR /app

# Copy go mod and sum files
COPY / ./

# Download all dependencies. Dependencies will be cached if the go.mod and go.sum files are not changed
RUN go mod download

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# Build the Go app
RUN go build github.com/CodeFish-xiao/nsq_exporter

# Start a new stage from scratch
FROM alpine:latest

# Copy the Pre-built binary file from the previous stage
COPY --from=builder /app/nsq_exporter /nsq_exporter

# Expose port 9117 to the outside world
EXPOSE 9117

# Command to run the executable
CMD ["/nsq_exporter", "-nsq.addr=http://nsqd:4151", "-collectors=nsqstats"]