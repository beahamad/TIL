package main
import "fmt"

const spanish = "es"
const english = "en"
const french = "fr"
const deutche = "de"
const portuguese = "pt"

const englishHello = "hello "
const spanishHello = "que passa "
const deutcheHello = "hallo "
const frenchHello = "bagette "
const portugueseHello = "eai "

func Hello(name string, language string) string {
	if name == "" {
		name = "world"
	}
	return greetingPrefix(language) + name
}

func greetingPrefix (language string) (prefix string){
	switch language {
	case spanish:
		prefix = spanishHello
	case english:
		prefix = englishHello
	case french:
		prefix = frenchHello
	case deutche:
		prefix = deutcheHello
	case portuguese:
		prefix = portugueseHello
	default:
		prefix = englishHello
	}
	return
}

func main() {
	fmt.Println(Hello("alfafa", ""))
}
