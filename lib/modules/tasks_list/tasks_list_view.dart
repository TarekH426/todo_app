import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:projects/modules/tasks_list/widgets/task_item_widget.dart';

class TasksListView extends StatelessWidget {
  const TasksListView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        width: mediaQuery.width,
        height: mediaQuery.height * 0.05,
        color: Color(0xFF5D9CEC),
      ),
      CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 1095)),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: Colors.black,
        dayColor: Colors.black,
        activeDayColor: Color(0xFF5D9CEC),
        activeBackgroundDayColor: Colors.white,
        dotsColor: Color(0xFF333A47),
        selectableDayPredicate: (date) => date.day != 23,
        locale: 'en_ISO',
        //showYears: true,
      ),
      Expanded(
        child: ListView.builder(
          padding: EdgeInsets.only(top: 10),
          itemBuilder: (context, index) => TaskItemWidget(),
          itemCount: 10,
        ),
      )
    ]);
    //
  }
}
