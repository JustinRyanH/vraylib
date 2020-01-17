module vraylib

// Window-Related Functions

// Initialize window and OpenGL context
pub fn init_window(w, h int, title string) {
	C.InitWindow(w, h, title.str)
}

// Check if KEY_ESCAPE pressed or Close icon pressed
pub fn window_should_close() bool {
	return C.WindowShouldClose()
}

// Close window and unload OpenGL context
pub fn close_window() {
	C.CloseWindow()
}

// Check if window has been initialized successfully
pub fn is_window_ready() bool {
	return C.IsWindowReady()
}

// Check if window has been minimized (or lost focus)
pub fn is_window_minimized() bool {
	return C.IsWindowMinimized()
}

// Check if window has been resized
pub fn is_window_resized() bool {
	return C.IsWindowResized()
}

// Check if window is currently hidden
pub fn is_window_hidden() bool {
	return C.IsWindowHidden()
}

// Toggle fullscreen mode (only PLATFORM_DESKTOP)
pub fn toggle_fullscreen() {
	C.ToggleFullscreen()
}

// Show the window
pub fn unhide_window() {
	C.UnhideWindow()
}

// Hide the window
pub fn hide_window() {
	C.HideWindow()
}

// Set icon for window (only PLATFORM_DESKTOP)
pub fn set_window_icon(image Image) {
	C.SetWindowIcon(image)
}

// Set title for window (only PLATFORM_DESKTOP)
pub fn set_window_title(title string) {
	C.SetWindowTitle(title.str)
}

// Set window position on screen (only PLATFORM_DESKTOP)
pub fn set_window_position(x, y int) {
	C.SetWindowPosition(x, y)
}

// Set monitor for the current window (fullscreen mode)
pub fn set_window_monitor(monitor int) {
	C.SetWindowMonitor(monitor)
}

// Set window minimum dimensions (for FLAG_WINDOW_RESIZABLE)
pub fn set_window_min_size(width, height int) {
	C.SetWindowMinSize(width, height)
}

// Set window dimensions
pub fn set_window_size(width, height int) {
	C.SetWindowSize(width, height)
}

// Get native window handle
pub fn get_window_hanlde() voidptr {
	return C.GetWindowHandle()
}

// Get current screen width
pub fn get_screen_width() int {
	return C.GetScreenWidth()
}

// Get current screen height
pub fn get_screen_height() int {
	return C.GetScreenHeight()
}

// Get number of connected monitors
pub fn get_monitor_count() int {
	return C.GetMonitorCount()
}

// Get primary monitor width
pub fn get_monitor_width(monitor int) int {
	return C.GetMonitorWidth(monitor)
}

// Get primary monitor height
pub fn get_monitor_height(monitor int) int {
	return C.GetMonitorHeight(monitor)
}

// Get primary monitor physical width in millimetres
pub fn get_monitor_physical_width(monitor int) int {
	return C.GetMonitorPhysicalWidth(monitor)
}

// Get primary monitor physical height in millimetres
pub fn get_monitor_physical_height(monitor int) int {
	return C.GetMonitorPhysicalHeight(monitor)
}

// Get the human-readable, UTF-8 encoded name of the primary monitor
pub fn get_monitor_name(monitor int) string {
	return string(byteptr(C.GetMonitorName(monitor)))
}

// Get clipboard text content
pub fn get_clipboard_text() string {
	return string(byteptr(C.GetClipboardText()))
}

// Set clipboard text content
pub fn set_clipboard_text(text string) {
	C.SetClipboardText(text.str)
}
