import 'package:app/core/constant/colors.dart';
import 'package:app/core/constant/text_style.dart';
import 'package:app/core/model/vacancy_model.dart';
import 'package:flutter/material.dart';

class VacancyScreen extends StatelessWidget {
  List<VacancyModel> vacanyList = [
    VacancyModel(
      title: "Flutter Dev",
      subTitle: "TechPioneer",
      salary: "0.0",
      state: "kpk",
    ),
    VacancyModel(
      title: "Web Dev",
      subTitle: "TechPioneer",
      salary: "0.0",
      location: "Pakistan",
    ),
    VacancyModel(
      title: "Marketing Dev",
      subTitle: "TechPioneer",
      salary: "0.0",
    ),
    VacancyModel(
      title: "Web Dev",
      subTitle: "TechPioneer",
      salary: "0.0",
      location: "sdjb",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,

      ///
      /// Start Body
      ///
      body: vacanyList.isEmpty
          ? Center(child: Text("No Vacancy", style: style24B))
          : ListView.builder(
              shrinkWrap: true,
              itemCount: vacanyList.length,

              itemBuilder: (BuildContext context, int index) {
                return CustomVacancy(vacancyModel: vacanyList[index]);
              },
            ),
    );
  }
}

class CustomVacancy extends StatelessWidget {
  final VacancyModel vacancyModel;
  CustomVacancy({required this.vacancyModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: 200,
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        children: [
          Container(
            height: 186,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              image: DecorationImage(
                image: NetworkImage(
                  "https://media.istockphoto.com/id/1285124274/photo/middle-age-man-portrait.jpg?s=612x612&w=0&k=20&c=D14m64UChVZyRhAr6MJW3guo7MKQbKvgNVdKmsgQ_1g=",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${vacancyModel.title}", style: style18B),
                Text("${vacancyModel.subTitle}", style: style14),

                SizedBox(height: 20),
                Row(
                  children: [
                    Icon(Icons.money),
                    SizedBox(width: 10),
                    Text("${vacancyModel.salary}", style: style12),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.location_city),
                    SizedBox(width: 10),
                    Text("${vacancyModel.location} ", style: style12),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.local_activity),
                    SizedBox(width: 10),
                    Text("${vacancyModel.state}" ?? "", style: style12),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
