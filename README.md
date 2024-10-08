# NSQ Exporter

[![GoDoc](https://godoc.org/github.com/lovoo/nsq_exporter?status.svg)](https://godoc.org/github.com/lovoo/nsq_exporter) [![Build Status](https://travis-ci.org/lovoo/nsq_exporter.svg?branch=master)](https://travis-ci.org/lovoo/nsq_exporter) [![](https://images.microbadger.com/badges/image/lovoo/nsq_exporter.svg)](https://microbadger.com/images/lovoo/nsq_exporter "Get your own image badge on microbadger.com")

NSQ exporter for prometheus.io, written in go.

## Usage

```
nsq_exporter -nsqd.addr=http://127.0.0.1:4151
```

| 标志名            | 默认值                             | 作用                                           |
|-------------------|----------------------------------|----------------------------------------------|
| `web.listen`      | `:9117`                          | 指定监听的地址，用于暴露监控指标和 web 界面。                        |
| `web.path`        | `/metrics`                       | 指定暴露监控指标的路径。                                 |
| `nsqd.addr`       | `http://localhost:4151/stats`    | 指定NSQ节点的地址，通常用于获取NSQ的统计信息。                      |
| `collect`         | `stats.topics,stats.channels,stats.clients` | 指定要使用的收集器的列表，各收集器通过逗号分隔。                  |
| `namespace`       | `nsq`                            | 为NSQ监控指标指定命名空间。                                |
| `tls.ca_cert`     | `""`                             | 用于连接NSQ时使用的CA证书文件。                           |
| `tls.cert`        | `""`                             | 用于客户端连接NSQ时使用的TLS证书文件。                       |
| `tls.key`         | `""`                             | 用于客户端连接NSQ时使用的TLS密钥文件。                       |



## Building


```
 go install github.com/CodeFish-xiao/nsq_exporter@latest
```
 



## 来源

[NSQ Exporter](https://github.com/lovoo/nsq_exporter)