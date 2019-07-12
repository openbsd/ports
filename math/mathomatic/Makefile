# $OpenBSD: Makefile,v 1.30 2019/07/12 20:47:42 sthen Exp $

COMMENT =	small, portable, general purpose computer algebra system

DISTNAME =	mathomatic-16.0.0
REVISION =	1

CATEGORIES =	math

HOMEPAGE =	http://mathomatic.org/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =	c m curses readline

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
