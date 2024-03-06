package mock

import (
	"context"
	"self-hosted-node/pkg/store/dsn"
	"self-hosted-node/pkg/store/models"

	"github.com/oklog/ulid/v2"
)

// Store implements the store.Store interface implemented as an in-memory mock
// interface for testing and development purposes.
type Store struct{}

func Open(uri *dsn.DSN) (*Store, error) {
	return nil, nil
}

func (s *Store) Close() error {
	return nil
}

func (s *Store) ListAccounts(context.Context, *models.PageInfo) (*models.AccountsPage, error) {
	return nil, nil
}

func (s *Store) CreateAccount(context.Context, *models.Account) error {
	return nil
}

func (s *Store) RetrieveAccount(ctx context.Context, id ulid.ULID) (*models.Account, error) {
	return nil, nil
}

func (s *Store) UpdateAccount(context.Context, *models.Account) error {
	return nil
}

func (s *Store) DeleteAccount(ctx context.Context, id ulid.ULID) error {
	return nil
}