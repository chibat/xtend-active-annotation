package foo

import annotations.Log

@Log
class Bar {
    def hoge() {
        log.info("Hello, World!");
    }
}