package main

import (
	"context"
	log "github.com/hashicorp/go-hclog"

	// TODO: update the path below to match your own repository
	java "github.com/Rookout/Nomad-Driver/rookout-java-driver"

	"github.com/hashicorp/nomad/plugins"
)

func main() {
	// Serve the plugin
	plugins.Serve(factory)
}

// factory returns a new instance of a nomad driver plugin
func factory(log log.Logger) interface{} {
	return java.NewDriver(context.Background(), log)
}
