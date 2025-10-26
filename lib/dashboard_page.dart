import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // LEFT SIDEBAR (Fixed Toolbar)
          Container(
            width: 220,
            color: const Color(0xfff8fafc),
            child: Column(
              children: [
                const SizedBox(height: 24),
                // App Name
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

                // Profile & XP
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
                      const Text(
                        '🔥 0 Day Streak',
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        '0 XP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 2),
                      const Text(
                        'Class 10',
                        style: TextStyle(color: Colors.white70, fontSize: 12),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 20),
                const Divider(),
                const SizedBox(height: 10),

                // Sidebar Navigation
                Expanded(
                  child: ListView(
                    children: const [
                      SideNavItem(icon: Icons.dashboard, label: 'Dashboard', active: true),
                      SideNavItem(icon: Icons.leaderboard, label: 'Leaderboard'),
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

          // RIGHT MAIN CONTENT
          Expanded(
            child: Container(
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header
                    Text(
                      'Welcome back, Bindu! 👋',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Ready to continue your learning adventure?',
                      style: GoogleFonts.poppins(color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 24),

                    // Top Stats
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        StatCard(title: 'Current Streak', value: '0 days', color: Color(0xffffa94d)),
                        StatCard(title: 'Total XP', value: '0', color: Color(0xffffd43b)),
                        StatCard(title: 'Lessons Done', value: '0', color: Color(0xff38d9a9)),
                        StatCard(title: 'Badges Earned', value: '0', color: Color(0xffb197fc)),
                      ],
                    ),
                    const SizedBox(height: 24),

                    // Subjects
                    Text(
                      'Your Subjects',
                      style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 12),
                    GridView.count(
                      crossAxisCount: 2,
                      childAspectRatio: 1.6,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      children: const [
                        SubjectCard(
                          title: 'English',
                          desc: 'Advanced English literature and language skills',
                          color: Color(0xfffa5252),
                        ),
                        SubjectCard(
                          title: 'Hindi',
                          desc: 'Advanced Hindi literature and language',
                          color: Color(0xffffa94d),
                        ),
                        SubjectCard(
                          title: 'Mathematics',
                          desc: 'Advanced algebra, trigonometry, and calculus',
                          color: Color(0xff0ca678),
                        ),
                        SubjectCard(
                          title: 'Science',
                          desc: 'Physics, Chemistry, and Biology for Class 10',
                          color: Color(0xff20c997),
                        ),
                        SubjectCard(
                          title: 'Social Science',
                          desc: 'History, geography, political science and economics',
                          color: Color(0xff15aabf),
                        ),
                        SubjectCard(
                          title: 'Computer',
                          desc: 'Programming, web development and IT applications',
                          color: Color(0xff845ef7),
                        ),
                      ],
                    ),

                    const SizedBox(height: 24),

                    // Daily Challenge
                    DailyChallengeCard(),
                  ],
                ),
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

class StatCard extends StatelessWidget {
  final String title;
  final String value;
  final Color color;

  const StatCard({
    super.key,
    required this.title,
    required this.value,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 4),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: const Offset(0, 3),
            )
          ],
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor: color.withOpacity(0.2),
              child: Icon(Icons.bookmark, color: color, size: 16),
            ),
            const SizedBox(height: 8),
            Text(
              value,
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey[600],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SubjectCard extends StatelessWidget {
  final String title;
  final String desc;
  final Color color;

  const SubjectCard({
    super.key,
    required this.title,
    required this.desc,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundColor: color.withOpacity(0.1),
            child: Icon(Icons.menu_book, color: color),
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: GoogleFonts.poppins(
              fontWeight: FontWeight.w600,
              fontSize: 14,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            desc,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: GoogleFonts.poppins(fontSize: 11, color: Colors.grey[600]),
          ),
          const Spacer(),
          LinearProgressIndicator(
            value: 0,
            color: color,
            backgroundColor: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(4),
          ),
        ],
      ),
    );
  }
}

class DailyChallengeCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '⚡ Daily Challenge',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  "Complete today's challenge to maintain your streak!",
                  style: GoogleFonts.poppins(fontSize: 13, color: Colors.grey[700]),
                ),
                const SizedBox(height: 8),
                Text(
                  '⏱ 10 min   💎 +20 XP',
                  style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xff38d9a9),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Text('Start'),
          ),
        ],
      ),
    );
  }
}
