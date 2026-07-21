import 'package:flutter/material.dart';

/// Paleta e estilos centrais do app.
/// Visual "clínico/sério" — azul como cor primária, mobile-first.
class AppColors {
  AppColors._();

  static const primary = Color(0xFF1565C0); // Azul clínico
  static const primaryLight = Color(0xFF0288D1); // Azul de destaque/ícones ativos

  static const alert = Color(0xFFC62828); // Contraindicações, avisos
  static const success = Color(0xFF2E7D32); // Confirmações, item salvo

  static const background = Color(0xFFF5F7FA); // Fundo de tela
  static const surface = Color(0xFFFFFFFF); // Cards

  static const textPrimary = Color(0xFF1A2027);
  static const textSecondary = Color(0xFF5B6470);

  static const chipBackground = Color(0xFFE3F0FC); // Azul claro translúcido
}

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
      secondary: AppColors.primaryLight,
      error: AppColors.alert,
      surface: AppColors.surface,
    );

    return ThemeData(
      useMaterial3: true,
      colorScheme: colorScheme,
      fontFamily: 'Montserrat',
      scaffoldBackgroundColor: AppColors.background,

      // AppBar
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
        elevation: 2,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontFamily: 'Montserrat',
          fontWeight: FontWeight.w600,
          fontSize: 20,
          letterSpacing: 0.4,
          color: Colors.white,
        ),
      ),

      // Tipografia
      textTheme: const TextTheme(
        // Títulos de tela
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimary,
        ),
        // Nome do antibiótico/patologia (destaque)
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: AppColors.textPrimary,
        ),
        // Corpo de texto clínico (doses, indicações)
        bodyMedium: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.normal,
          height: 1.4,
          color: AppColors.textPrimary,
        ),
        bodySmall: TextStyle(
          fontSize: 13,
          height: 1.4,
          color: AppColors.textSecondary,
        ),
        // Labels/categorias
        labelSmall: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          letterSpacing: 0.8,
          color: AppColors.textSecondary,
        ),
      ),

      // Cards
      cardTheme: CardThemeData(
        color: AppColors.surface,
        elevation: 2,
        shadowColor: Colors.black.withValues(alpha: 0.08),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        margin: const EdgeInsets.symmetric(vertical: 6, horizontal: 0),
      ),

      // Botões
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: Colors.white,
          elevation: 0,
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          textStyle: const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.primary,
          side: const BorderSide(color: AppColors.primary),
          padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),

      // Chips (classe do antibiótico, tipo de patologia)
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.chipBackground,
        labelStyle: const TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
          fontSize: 12,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide.none,
        ),
      ),

      // Ícones (outline, tom clínico)
      iconTheme: const IconThemeData(
        color: AppColors.primary,
      ),

      // Bottom sheets (usado no modal de "sobre o app")
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: AppColors.surface,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
      ),

      dividerColor: const Color(0xFFE0E4E8),

      // Transições de navegação consistentes entre plataformas
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.windows: ZoomPageTransitionsBuilder(),
          TargetPlatform.linux: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: FadeUpwardsPageTransitionsBuilder(),
          TargetPlatform.macOS: FadeUpwardsPageTransitionsBuilder(),
        },
      ),
    );
  }
}