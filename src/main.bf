>+                     Set Task Queue Flag to 1 (tasks are pending)
>>++                   Add Task 2 to the Queue
>>>+++                 Add Task 3 to the Queue

[                     Start Event Loop (check if tasks are pending)
    <[->+<]           Move the first task from the queue to "Current Task" (Cell 0)
    
    <<[->>+<<]        Simulate Task Execution (increment Task ID cell)
    
    >>>[->>+<<]       Mark Task as Completed and Shift Queue Left
    
    <[-]>             Check if the queue is empty (clear Task Queue Flag if no tasks)
]
