package main

import (
	"context"
	log "github.com/hashicorp/go-hclog"

	java "github.com/Rookout/Nomad-Driver/rookout-java-driver"

	"github.com/hashicorp/nomad/plugins"
)

func main() {
	plugins.Serve(factory)
}

func factory(log log.Logger) interface{} {
	return java.NewDriver(context.Background(), log)
}
