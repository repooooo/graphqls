package authresolver

import (
	"context"
	authmodel "github.com/repooooo/graphqls/go/gen/auth/model"
)

// This file will not be regenerated automatically.
//
// It serves as dependency injection for your app, add any dependencies you require here.

type Handler interface {
	Login(ctx context.Context, input authmodel.LoginRequest) (*authmodel.LoginResponse, error)
	Logout(ctx context.Context, input authmodel.LogoutRequest) (*authmodel.LogoutResponse, error)
}

type Resolver struct {
	handler Handler
}

func NewResolver(handler Handler) *Resolver {
	return &Resolver{handler: handler}
}
