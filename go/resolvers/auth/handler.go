package auth

import (
	"context"
	"github.com/repooooo/graphqls/go/gen/auth/model"
)

type Handler interface {
	Login(ctx context.Context, input model.LoginRequest) (*model.LoginResponse, error)
	Logout(ctx context.Context, input model.LogoutRequest) (*model.LogoutResponse, error)
}
