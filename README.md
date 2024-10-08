# NSQ Exporter

[![GoDoc](https://godoc.org/github.com/lovoo/nsq_exporter?status.svg)](https://godoc.org/github.com/lovoo/nsq_exporter) [![Build Status](https://travis-ci.org/lovoo/nsq_exporter.svg?branch=master)](https://travis-ci.org/lovoo/nsq_exporter) [![](https://images.microbadger.com/badges/image/lovoo/nsq_exporter.svg)](https://microbadger.com/images/lovoo/nsq_exporter "Get your own image badge on microbadger.com")

NSQ exporter for prometheus.io, written in go.

## Usage

    docker run -d --name nsq_exporter -l nsqd:nsqd -p 9117:9117 lovoo/nsq_exporter:latest -nsq.addr=http://nsqd:4151 -collectors=nsqstats

## Building

    make

    OR

    go install github.com/CodeFish-xiao/nsq_exporter

## 来源

[NSQ Exporter](