import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaderboardPage extends StatelessWidget {
  const LeaderboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffff9ed),
      body: Row(
        children: [
          // LEFT SIDEBAR (same style as dashboard)
          Container(
            width: 220,
            color: const Color(0xfff8fafc),
            child: Column(
              children: [
                const SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.menu_book, color: Colors.green, size: 28),
                    const SizedBox(width: 8),
                    Text(
                      'EduQuest',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30),

                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [Color(0xff38d9a9), Color(0xff4dabf7)],
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('🔥 0 Day Streak',
                          style: TextStyle(color: Colors.white, fontSize: 13)),
                      const SizedBox(height: 4),
                      const Text('0 XP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          )),
                      const SizedBox(height: 2),
                      const Text('Class 10',
                          style: TextStyle(color: Colors.white70, fontSize: 12)),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),

                Expanded(
                  child: ListView(
                    children: const [
                      SideNavItem(icon: Icons.dashboard, label: 'Dashboard'),
                      SideNavItem(
                        icon: Icons.leaderboard,
                        label: 'Leaderboard',
                        active: true,
                      ),
                      SideNavItem(icon: Icons.emoji_events, label: 'Contests'),
                      SideNavItem(icon: Icons.upload_file, label: 'Upload PDF'),
                      SideNavItem(icon: Icons.smart_toy, label: 'AI Tutor'),
                      SideNavItem(icon: Icons.person, label: 'Profile'),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // MAIN CONTENT
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 40),
                  // Title
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.emoji_events,
                          color: Colors.orange, size: 36),
                      const SizedBox(width: 10),
                      Text(
                        'Leaderboard',
                        style: GoogleFonts.poppins(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Compete with students and climb to the top!',
                    style: GoogleFonts.poppins(
                        color: Colors.grey[700], fontSize: 14),
                  ),
                  const SizedBox(height: 32),

                  // Tabs: Global | My Class
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 6,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xfff8fafc),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            alignment: Alignment.center,
                            child: Text(
                              'Global',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w600,
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                            alignment: Alignment.center,
                            child: Text(
                              'My Class',
                              style: GoogleFonts.poppins(
                                fontWeight: FontWeight.w500,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),

                  // Leaderboard card
                  Container(
                    padding: const EdgeInsets.all(16),
                    margin: const EdgeInsets.symmetric(horizontal: 180),
                    decoration: BoxDecoration(
                      color: const Color(0xffd3f9d8),
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 8,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        const Icon(Icons.emoji_events,
                            color: Colors.amber, size: 28),
                        const SizedBox(width: 12),
                        const CircleAvatar(
                          radius: 18,
                          backgroundColor: Color(0xffb197fc),
                          child: Text('B',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Bindu choudhary  ',
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    'Class 10 • 0 day streak',
                                    style: GoogleFonts.poppins(
                                        fontSize: 12, color: Colors.grey[700]),
                                  ),
                                  const SizedBox(width: 8),
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 6, vertical: 2),
                                    decoration: BoxDecoration(
                                      color: Colors.green[100],
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Text(
                                      'You',
                                      style: GoogleFonts.poppins(
                                          color: Colors.green[700],
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Text(
                          '0 XP',
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class SideNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool active;

  const SideNavItem({
    super.key,
    required this.icon,
    required this.label,
    this.active = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
      decoration: BoxDecoration(
        color: active ? const Color(0xffd3f9d8) : Colors.transparent,
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: active ? Colors.green[700] : Colors.grey[800],
        ),
        title: Text(
          label,
          style: GoogleFonts.poppins(
            fontSize: 14,
            color: active ? Colors.green[700] : Colors.black87,
            fontWeight: active ? FontWeight.w600 : FontWeight.w500,
          ),
        ),
        onTap: () {},
      ),
    );
  }
}
