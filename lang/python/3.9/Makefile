# IMPORTANT!  If you make any changes to the Python ports, be sure
# to also update files/CHANGES.OpenBSD for your change.  This is a
# requirement of the PSF license, if it constitutes a change to
# Python itself.

FULL_VERSION =		3.9.15
SHARED_LIBS =		python3.9 0.0
VERSION_SPEC =		>=3.9,<3.10
PORTROACH =		limit:^3\.9
REVISION-main =		4
REVISION-idle =		0

# -tkinter in 7.2-stable must be kept a higher version than 7.1-stable
# due to dep changes (Tcl/Tk 8.5 -> 8.6); 7.2-current must be kept at same
# or higher version than 7.2-stable.
REVISION-tkinter =	0

.include <bsd.port.mk>
