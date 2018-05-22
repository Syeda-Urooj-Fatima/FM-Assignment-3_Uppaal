//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
There exists a state such that jobber 1 is doing an easy job and jobber 2 is doing a hard job
*/
E<> (jobber1.work_easy and jobber2.work_hard)

/*
Mutex: None of the jobbers will be doing a hard job at the same time since the hammer resource is shared
*/
A[] not(jobber1.work_hard and jobber2.work_hard and jobber3.work_hard and jobber4.work_hard)

/*
Deadlock property: The system will not go in a deadlock state
*/
A[] not deadlock
