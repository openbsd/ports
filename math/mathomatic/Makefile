# $OpenBSD: Makefile,v 1.27 2013/03/11 11:23:55 espie Exp $

COMMENT =	small, portable, general purpose computer algebra system

DISTNAME =	mathomatic-16.0.0

CATEGORIES =	math

HOMEPAGE =	http://mathomatic.org/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ncurses readline

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tar.bz2

MAKE_ENV =	READLINE=1
MAKE_FILE =	makefile
USE_GMAKE =	Yes

FAKE_FLAGS =	mandir=$(PREFIX)/man

CFLAGS +=	-DNO_COLOR

TEST_TARGET =	test

RUN_DEPENDS =	devel/desktop-file-utils

.include <bsd.port.mk>
