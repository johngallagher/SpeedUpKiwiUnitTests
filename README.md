#Speed Up Kiwi Tests

As I wrote more tests with Kiwi, the time taken for the tests was becoming unacceptable.

For about 500 tests, they were taking 6-7 seconds to run.

This is an attempt to find out why. A good unit test, in my opinion, should be no longer than 10ms and ideally 3-5ms maximum.


#Benchmarks

Two test cases were made, one running tests on a core data object, another on an NSObject subclass.

The exact same tests were replicated as RSpec style unit tests and classic SenTest style tests. Both used Kiwi.

## RSpec style test benchmarks

* KPCoreDataSpec ~ 300ms
* KPSyncTextGeneratorSpec ~ 80ms

## SenTest style test benchmarks

* KPCoreDataSpec ~ 20ms
* KPSyncTextGeneratorSpec ~ 1ms

#Conclusion

The Kiwi RSpec style adds a severe performance penalty - between 10 and 100x speed increase can be obtained by using the alternative SenTest style tests.

35 tests running at 21ms means a project with 1000 unit tests would take about 600ms or 0.6s to run the tests, which is totally acceptable.