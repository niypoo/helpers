class UsernameHelper {
  static String username(String? displayName) => displayName ?? 'unknown';
  static String firstName(String? displayName) {
    if (displayName == null || displayName.trim().isEmpty) return 'unknown';
    return displayName.trim().split(' ')[0].toUpperCase();
  }
}
