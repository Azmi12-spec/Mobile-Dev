import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD9C5B2),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 16),
                child: Card(
                  color: const Color(0xFFF2EAE1),
                  elevation: 4,
                  shadowColor: Colors.black12,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 24,
                      horizontal: 16,
                    ),
                    child: Column(
                      children: [
                        Card(
                          color: const Color(0xFFD9C5B2),
                          elevation: 2,
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(55),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4),
                            child: Card(
                              color: Colors.grey[300],
                              elevation: 0,
                              margin: EdgeInsets.zero,
                              clipBehavior: Clip.antiAlias,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                              child: Container(
                                height: 90,
                                width: 90,
                                color: Colors.grey[300],
                                child: const Icon(
                                  Icons.person,
                                  size: 55,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 14),
                        const Text(
                          "Muhammad Shofa 'Azmi",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          "azmishofamuhammad@gmail.com",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey[700],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 16),
                child: Card(
                  color: const Color(0xFFF2EAE1),
                  elevation: 4,
                  shadowColor: Colors.black12,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      ListTile(
                        onTap: () {},
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        leading: Card(
                          color: const Color(0xFFE5D8C8),
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.edit_outlined, size: 20, color: Colors.black87),
                          ),
                        ),
                        title: const Text(
                          "Edit Profil",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
                      ),
                      const Divider(height: 1, color: Colors.black12),
                      ListTile(
                        onTap: () {},
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        leading: Card(
                          color: const Color(0xFFE5D8C8),
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.phone_android_outlined, size: 20, color: Colors.black87),
                          ),
                        ),
                        title: const Text(
                          "Nomor Telepon",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(
                          "+62 878-4876-2011",
                          style: TextStyle(fontSize: 12, color: Colors.grey[700]),
                        ),
                        trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
                      ),
                      const Divider(height: 1, color: Colors.black12),
                      ListTile(
                        onTap: () {},
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        leading: Card(
                          color: const Color(0xFFE5D8C8),
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.email_outlined, size: 20, color: Colors.black87),
                          ),
                        ),
                        title: const Text(
                          "Ubah Email",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
                      ),
                      const Divider(height: 1, color: Colors.black12),
                      ListTile(
                        onTap: () {},
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                        leading: Card(
                          color: const Color(0xFFE5D8C8),
                          elevation: 0,
                          margin: EdgeInsets.zero,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Padding(
                            padding: EdgeInsets.all(8),
                            child: Icon(Icons.lock_outline, size: 20, color: Colors.black87),
                          ),
                        ),
                        title: const Text(
                          "Ubah Kata Sandi",
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                        ),
                        trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.grey),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                child: Card(
                  color: const Color(0xFFF2EAE1),
                  elevation: 4,
                  shadowColor: Colors.black12,
                  clipBehavior: Clip.antiAlias,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: ListTile(
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    leading: Card(
                      color: Colors.red[50],
                      elevation: 0,
                      margin: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8),
                        child: Icon(Icons.logout, size: 20, color: Colors.red),
                      ),
                    ),
                    title: const Text(
                      "Keluar Akun",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    trailing: const Icon(Icons.chevron_right, size: 20, color: Colors.red),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}