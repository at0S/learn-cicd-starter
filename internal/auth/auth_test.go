package auth

import (
	"errors"
	"net/http"
	"testing"
)

func TestGetAPIKeyValidHeader(t *testing.T) {
	headers := http.Header{
		"Authorization": {"ApiKey 12345"},
	}
	got, err := GetAPIKey(headers)
	want := "12345"

	if err != nil {
		t.Fatalf("Expected no error, got: %v", err)
	}

	if got != want {
		t.Errorf("GetAPIKey() = %v, want %v", got, want)
	}
}

func TestGetAPIKeyNoHeader(t *testing.T) {
	headers := http.Header{
		"Foo": {"Bar"},
	}
	_, err := GetAPIKey(headers)
	if !errors.Is(err, ErrNoAuthHeaderIncluded) {
		t.Errorf("Expected ErrNoAuthHeaderIncluded, got: %v", err)
	}
}
