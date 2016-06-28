package main

import (
  "time"
  "log"
)

type Pinger struct {
  interval time.Duration
  ticker *time.Ticker
  cmd chan string
}

func (p *Pinger) run() {
  p.ticker = time.NewTicker(p.interval)
  defer p.ticker.Stop()

  loop:
  for {
    select {
      case <-p.ticker.C:
        app.BroadcastAll((&Reply{Type: "ping", Message: time.Now().Unix()}).toJSON())
      case <-p.cmd:
        log.Printf("Ping paused")
        break loop
      }
    }
}

func (p *Pinger) pause() {
  log.Printf("Pause ping")
  p.cmd <- "stop"
}
