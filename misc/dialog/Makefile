# $OpenBSD: Makefile,v 1.19 2013/03/11 11:23:57 espie Exp $

COMMENT =	format the display of a shell script

V =		1.1-20080819
DISTNAME = 	dialog-${V}
PKGNAME = 	dialog-${V:S/-/./}

EXTRACT_SUFX =	.tgz

CATEGORIES =	misc

MASTER_SITES =	ftp://invisible-island.net/dialog/
HOMEPAGE =	http://invisible-island.net/dialog/dialog.html

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ncurses

CONFIGURE_STYLE=gnu
MAKE_FILE =	makefile

USE_GROFF =	Yes
NO_TEST =	Yes

.include <bsd.port.mk>
