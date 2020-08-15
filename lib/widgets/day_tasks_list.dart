import 'package:daily_tasks_app/models/task.dart';
import 'package:daily_tasks_app/widgets/day_task_widget.dart';
import 'package:flutter/material.dart';

class DayTasksList extends StatelessWidget {
  final List<Task> dayTasks;
  final void Function(Task, bool) onTaskCheck;

  DayTasksList({
    @required this.dayTasks,
    @required this.onTaskCheck,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.dayTasks.length,
      itemBuilder: (ctx, index) => DayTaskWidget(
        task: this.dayTasks[index],
        onTaskCheck: onTaskCheck,
      ),
    );
  }
}
