# $OpenBSD: Makefile,v 1.17 2009/01/16 07:40:34 ajacoutot Exp $

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m ncurses

CONFIGURE_STYLE=gnu
MAKE_FILE =	makefile

NO_REGRESS =	Yes

.include <bsd.port.mk>
