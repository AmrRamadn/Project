import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';



class NewsTipsPage extends StatelessWidget {
  const NewsTipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(

            onPressed: () {
              Navigator.pop(context);
            },
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.blue,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Tips',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 28,
                ),
              ),
            ],
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: [
            Image.network(
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*1FSWfHK9t6jViMjdGIDcow.jpeg',
              height: 300,
              width: 200,
            ),
            InkWell(
              child: const Text(
                'How to Live a Healthy Lifestyle: Tips for Optimal Health',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => launchUrlString(
                  'https://healthpeoples.medium.com/how-to-live-a-healthy-lifestyle-tips-for-optimal-health-99368b670111'),
            ),
            const Text(
              'Maintaining a healthy lifestyle is crucial for optimal physical and mental health',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://www.australiawidefirstaid.com.au/media-library/infographic-on-7-tips-to-start-exercising-923w.webp',
              height: 300,
              width: 200,
            ),
            InkWell(
              child: const Text(
                '7 Easy Tips on How to Start Exercising',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => launchUrlString(
                  'https://www.australiawidefirstaid.com.au/resources/how-to-start-exercising'),
            ),
            const Text(
              'Exercise is a subcategory of physical activity that is usually done to work on the entire body or any body part separately. Exercise is usually a planned activity with a structured program to adhere to.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://hips.hearstapps.com/hmg-prod/images/gh100healthyeatingartboard-1-1643370988.png',
              height: 300,
              width: 200,
            ),
            InkWell(
              child: const Text(
                '100 healthy eating tips from an expert nutritionist',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => launchUrlString(
                  'https://www.goodhousekeeping.com/uk/health/healthy-eating/a38577562/healthy-eating/'),
            ),
            const Text(
              'Small changes to the food you eat can make a big difference.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://miro.medium.com/v2/resize:fit:720/format:webp/1*BMZGyHh0q86md-Rs60ANBw.jpeg',
              height: 300,
              width: 200,
            ),
            InkWell(
              child: const Text(
                'Maintaining Mental Health: Essential Tips for Business Leaders',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => launchUrlString(
                  'https://medium.com/@saherblogs/maintaining-mental-health-essential-tips-for-business-leaders-c320b2dc5338'),
            ),
            const Text(
              'In the fast-paced and demanding world of business leadership, it’s crucial for leaders to prioritize their mental well-being. By adopting a proactive approach to mental health, business leaders can not only enhance their own quality of life but also create a positive and supportive work environment. In this article, we will explore four essential tips for business leaders to maintain their mental health and foster a culture of well-being within their organizations.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            const SizedBox(height: 20),
            Image.network(
              'https://images.ctfassets.net/ut7rzv8yehpf/1DhC3uX3EeKnjU02LWyTXH/9c82e6ae82662ed5903eafb40d888d90/8_Main_Types_of_Heart_Disease.jpg?w=1800&h=900&q=50&fm=webp',
              height: 300,
              width: 200,
            ),
            InkWell(
              child: const Text(
                '8 Different Types of Heart Disease',
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              onTap: () => launchUrlString(
                  'https://www.everlywell.com/blog/heart-health/types-of-heart-disease/'),
            ),
            const Text(
              'The most common type of heart disease that affects American adults is coronary heart disease, also called coronary artery disease. When people talk about heart disease, they are most likely referring to coronary heart disease.',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
          ],
        ),
    );
  }
}
