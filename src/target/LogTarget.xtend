package target

import annotations.Log

@Log
class LogTarget {
	def hoge() {
		log.info("Hello, World!")
	}
}
