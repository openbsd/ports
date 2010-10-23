# $OpenBSD: Makefile,v 1.22 2010/10/23 16:47:33 steven Exp $

COMMENT =	small, portable, general purpose computer algebra system

DISTNAME =	mathomatic-15.3.0

CATEGORIES =	math

HOMEPAGE =	http://www.mathomatic.org/math/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m ncurses readline

MASTER_SITES =	http://www.panix.com/~gesslein/
EXTRACT_SUFX =	.tar.bz2

MAKE_ENV =	READLINE=1
MAKE_FILE =	makefile
USE_GMAKE =	Yes
USE_GROFF =	Yes

REGRESS_TARGET =	test

RUN_DEPENDS =	::devel/desktop-file-utils

.include <bsd.port.mk>
