qmail is a secure, reliable, efficient, simple message transfer agent.
It is meant as a replacement for the entire sendmail-binmail system on
typical Internet-connected UNIX hosts.

Secure: Security isn't just a goal, but an absolute requirement. Mail
delivery is critical for users; it cannot be turned off, so it must be
completely secure. (This is why I started writing qmail: I was sick of
the security holes in sendmail and other MTAs.)

Reliable: qmail's straight-paper-path philosophy guarantees that a
message, once accepted into the system, will never be lost. qmail also
supports maildir, a new, super-reliable user mailbox format. Maildirs,
unlike mbox files and mh folders, won't be corrupted if the system
crashes during delivery. Even better, not only can a user safely read
his mail over NFS, but any number of NFS clients can deliver mail to him
at the same time.

Efficient: On a Pentium under BSD/OS, qmail can easily sustain 200000
local messages per day---that's separate messages injected and delivered
to mailboxes in a real test! Although remote deliveries are inherently
limited by the slowness of DNS and SMTP, qmail overlaps 20 simultaneous
deliveries by default, so it zooms quickly through mailing lists. (This
is why I finished qmail: I had to get a big mailing list set up.)

Simple: qmail is vastly smaller than any other Internet MTA. Some
reasons why: (1) Other MTAs have separate forwarding, aliasing, and
mailing list mechanisms. qmail has one simple forwarding mechanism that
lets users handle their own mailing lists. (2) Other MTAs offer a
spectrum of delivery modes, from fast+unsafe to slow+queued. qmail-send
is instantly triggered by new items in the queue, so the qmail system
has just one delivery mode: fast+queued. (3) Other MTAs include, in
effect, a specialized version of inetd that watches the load average.
qmail's design inherently limits the machine load, so qmail-smtpd can
safely run from your system's inetd.

Replacement for sendmail: qmail supports host and user masquerading,
full host hiding, virtual domains, null clients, list-owner rewriting,
relay control, double-bounce recording, arbitrary RFC 822 address lists,
cross-host mailing list loop detection, per-recipient checkpointing,
downed host backoffs, independent message retry schedules, etc. In
short, it's up to speed on modern MTA features. qmail also includes a
drop-in ``sendmail'' wrapper so that it will be used transparently by
your current UAs.
