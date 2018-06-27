# $OpenBSD: Makefile,v 1.28 2018/06/27 21:03:57 espie Exp $

COMMENT =	small, portable, general purpose computer algebra system

DISTNAME =	mathomatic-16.0.0
REVISION =	0

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
