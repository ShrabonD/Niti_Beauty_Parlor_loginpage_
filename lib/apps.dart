import 'package:flutter/material.dart';

void main() {
  runApp(const NitiBeautyParlorApp());
}

class NitiBeautyParlorApp extends StatelessWidget {
  const NitiBeautyParlorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Niti Beauty Parlor',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFF48FB1), // Pastel Pink
          primary: const Color(0xFFF48FB1),
          secondary: const Color(0xFFCE93D8), // Light Purple
        ),
        useMaterial3: true,
        fontFamily: 'Roboto', // Clean, modern typography
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // Soft background gradient (Light Pink to Beige)
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFFFCE4EC), // Very Light Pink
              Color(0xFFFFF3E0), // Soft Beige
            ],
          ),
        ),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24.0,
                vertical: 32.0,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Top Section (Header)
                  const Icon(
                    Icons.spa,
                    size: 50,
                    color: Color(0xFFE91E63), // Pink
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Niti Beauty Parlor',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontFamily: 'Serif', // Stylish elegant font alternative
                      fontWeight: FontWeight.w800,
                      color: Color(0xFF880E4F), // Deep Pink/Maroon
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Welcome Section
                  Container(
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.7),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pink.withOpacity(0.05),
                          blurRadius: 15,
                          offset: const Offset(0, 8),
                        ),
                      ],
                    ),
                    child: const Text(
                      '“Welcome to Niti Beauty Parlor, where beauty meets elegance. We are dedicated to making you feel confident and beautiful.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontStyle: FontStyle.italic,
                        color: Color(0xFF4A148C), // Deep Purple
                        height: 1.6,
                      ),
                    ),
                  ),
                  const SizedBox(height: 36),

                  // Information Section
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Parlor Details',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF880E4F),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  _buildInfoCard(
                    icon: Icons.person,
                    title: 'Owner',
                    subtitle: 'Shrabonti Das',
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    icon: Icons.phone,
                    title: 'Contact',
                    subtitle: '01XXXXXXXXX',
                  ),
                  const SizedBox(height: 12),
                  _buildInfoCard(
                    icon: Icons.location_on,
                    title: 'Address',
                    subtitle: 'Pathantula, Sylhet, Bangladesh',
                  ),
                  const SizedBox(height: 40),

                  // Buttons Section
                  _buildCustomButton(
                    'Our Services',
                    Icons.face_retouching_natural,
                  ),
                  const SizedBox(height: 16),
                  _buildCustomButton('Book Appointment', Icons.calendar_today),
                  const SizedBox(height: 16),
                  _buildCustomButton('Review', Icons.photo_library),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Helper widget for information cards
  Widget _buildInfoCard({
    required IconData icon,
    required String title,
    required String subtitle,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.pink.withOpacity(0.08),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
            color: Color(0xFFFCE4EC),
            shape: BoxShape.circle,
          ),
          child: Icon(icon, color: Color(0xFFD81B60)),
        ),
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 13,
            color: Colors.grey,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: const TextStyle(
            fontSize: 16,
            color: Color(0xFF4A148C),
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  
  Widget _buildCustomButton(String text, IconData icon) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: ElevatedButton.icon(
        onPressed: () {}, 
        icon: Icon(icon, size: 24, color: Colors.white),
        label: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 0.5,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFF06292), // Soft Light Pink
          foregroundColor: Colors.white,
          elevation: 4,
          shadowColor: const Color(0xFFF06292).withOpacity(0.6),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
    );
  }
}
