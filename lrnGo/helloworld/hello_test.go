package main
import "testing"

func TestHello(t *testing.T)  {
	assertCorrectMessage := func(t testing.TB, got, want string){
		t.Helper()
		if got != want {
			t.Errorf("got %q want %q", got, want)
		}
	}

	t.Run("saying hello to people", func(t *testing.T){
		got := Hello("alfafa", "")
		want := "hello alfafa"
		assertCorrectMessage(t, got, want)
	})

	t.Run("saying hello when an empty string is supplied", func(t *testing.T){
		got := Hello("", "")
		want := "hello world"
		assertCorrectMessage(t, got, want)
	})

	t.Run("spanish hello", func(t *testing.T){
		got := Hello("alfafa", "es")
		want := "que passa alfafa"
		assertCorrectMessage(t, got, want)
	})

	t.Run("french hello", func(t *testing.T){
		got := Hello("alfafa", "fr")
		want := "bagette alfafa"
		assertCorrectMessage(t, got, want)
	})

	t.Run("portuguese hello", func(t *testing.T){
		got := Hello("alfafa", "pt")
		want := "eai alfafa"
		assertCorrectMessage(t, got, want)
	})
}
