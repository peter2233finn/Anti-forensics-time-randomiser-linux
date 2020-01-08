A tool to spoof forensic investigators by randomising the hardware clock.
One script is for writing files with random timestamps, the other is for randomising the system time.

When a forensic investigator is examioning a computer, one of the most important things is the time files were written, making the job much harder and time consuming. I do not believe there is an option in linux to prevent timestamps when files are written.

Note: NTP clock must be turned off for this to work. If it is not the clock will stay synced using the NTP server instead of the hardware clock. It was tested on Arch Linux.


Feel free to fork and commit. Use the code for whatever you want.
