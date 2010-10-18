# $OpenBSD: Makefile,v 1.21 2010/10/18 20:52:06 espie Exp $

COMMENT =	small, portable, general purpose computer algebra system

DISTNAME =	mathomatic-14.5.5
REVISION =	0

CATEGORIES =	math

HOMEPAGE =	http://www.mathomatic.org/

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
FAKE_FLAGS =	prefix=${WRKINST}${PREFIX}
USE_GROFF =	Yes

REGRESS_TARGET =	test

RUN_DEPENDS =	::devel/desktop-file-utils

.include <bsd.port.mk>
