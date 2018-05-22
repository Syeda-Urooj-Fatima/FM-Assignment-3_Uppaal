//This file was generated from (Commercial) UPPAAL 4.0.14 (rev. 5615), May 2014

/*
Mutex: No two signals are green at the same time
Query Description: For all states in all paths, no two signals are green at the same time
*/
A[] not (kh1.Green and kh2.Green and g1.Green and g2.Green)

/*
Bounded Liveness: A resource (intersection) requested will be granted within a specified time.
Will every signal be granted the intersection resource within a specified time?
Query Description: For all states in all paths, any red signal implies that it will get green within a waiting time of 70 units (for Kashmir highway signals) or 110 units (for G11 signals)
*/
A[] (kh1.Red imply kh1.Green imply kh1.wait<=70) or (kh2.Red imply kh2.Green imply kh2.wait<=70) or (g1.Red imply g1.Green imply g1.wait<=110) or (g2.Red imply g2.Green imply g2.wait<=110)

/*
Deadlock: The system does not go into a deadlock state
Query description: For all states in all paths, the system does not go into a deadlock state
*/
A[] not deadlock
