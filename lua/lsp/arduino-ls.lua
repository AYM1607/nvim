require'lspconfig'.arduino_language_server.setup {
  cmd = {
    "arduino-language-server",
    "-cli-config", "/Users/aym/Library/Arduino15/arduino-cli.yaml",
    "-fqbn", "adafruit:nrf52:feather52841",
    "-cli", "arduino-cli",
    "-clangd", "clangd"
  }
}
