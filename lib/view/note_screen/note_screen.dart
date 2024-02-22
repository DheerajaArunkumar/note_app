import 'package:flutter/material.dart';

import 'package:note_app/view/note_screen/widget/coustomnote_widget.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 32, 32, 32),
        onPressed: () {
          showModalBottomSheet(
            isScrollControlled: true,
            showDragHandle: true,
            context: context,
            builder: (context) => SizedBox(
              height: 550,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text(
                            "Title",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 50.0, horizontal: 10),
                          label: const Text(
                            "Description",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6)))),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextFormField(
                      decoration: InputDecoration(
                          label: const Text(
                            "Date",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6))),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: Colors.black.withOpacity(0.6)))),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            height: 50,
                            width: 50,
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              color: Colors.purple[200],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.9),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            "Cancel",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )),
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Container(
                          height: 40,
                          width: 90,
                          decoration: BoxDecoration(
                              border: Border.all(width: 0.9),
                              borderRadius: BorderRadius.circular(10)),
                          child: const Center(
                              child: Text(
                            "Save",
                            style: TextStyle(fontWeight: FontWeight.w600),
                          )),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        },
        elevation: 0,
        child: const Icon(
          Icons.add_box,
          color: Colors.white54,
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 94, 87),
        title: const Text(
          'Notes',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) => const CustomNoteWidget(),
                  separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  itemCount: 10)
            ],
          ),
        ),
      ),
    );
  }
}
