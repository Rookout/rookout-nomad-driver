# Rookout Driver

[Rookout](https://rookout.com) is a disruptive developer solution for Cloud Native debugging and live-data collection.
Rookout’s Non-Breaking Breakpoints let you collect any type of data on the fly with no extra coding, redeployments, or restarts. 

The `rookout` driver is used to execute Java applications packaged into a Java Jar file and add the Rookout SDK to them.
The driver requires the Jar file to be accessible from the Nomad client via the [`artifact` downloader](https://www.nomadproject.io/docs/job-specification/artifact).
It also requires you to have a Rookout token which you can get by [signing up](http://rookout.com).

More info about the Rookout SDK is available in the [Rookout docs](https://docs.rookout.com).
