import 'package:flutter/material.dart';

class SeeMoreBlogs extends StatefulWidget {
  const SeeMoreBlogs({super.key});

  @override
  State<SeeMoreBlogs> createState() => _SeeMoreBlogsState();
}

class _SeeMoreBlogsState extends State<SeeMoreBlogs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Blogs'),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.close),
          alignment: Alignment.centerLeft,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SizedBox(
            height: 180,
            width: 470,
            child: Card(
              elevation: 8,
              
              child: Container(
                decoration: BoxDecoration(
                  border: const Border(
                    top: BorderSide(color: Colors.black, width: 2),
                    left: BorderSide(color: Colors.black, width: 2),
                    right: BorderSide(color: Colors.black, width: 7),
                    bottom: BorderSide(color: Colors.black, width: 7),
                  ),
                  borderRadius: BorderRadius.circular(11),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.asset(
                            'assets/images/figma.png',
                            fit: BoxFit.cover,
                            width: 80,
                            height: 100,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: InkWell(
                                    onTap: () {},
                                    child: const Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            'Powerful System that will help many to know and grow',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        Icon(
                                          Icons.arrow_outward,
                                          size: 20,
                                          weight: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                const SizedBox(
                                  width: double.infinity,
                                  child: Text(
                                    'Figma UI kit and design system targeting a wide variety of use cases.Figma UI kit...',
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(fontSize: 12),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const SizedBox(
                            width: 16,
                          ),
                          Container(
                              alignment: Alignment.center,
                              height: 25,
                              width: 70,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                'hardware',
                                textAlign: TextAlign.center,
                              )),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                              height: 25,
                              width: 65,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                'arduino',
                                textAlign: TextAlign.center,
                              )),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                              height: 25,
                              width: 30,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 1, color: Colors.black),
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Text(
                                '...',
                                textAlign: TextAlign.center,
                              )),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 25,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}