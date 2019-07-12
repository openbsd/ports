# $OpenBSD: Makefile,v 1.7 2019/07/12 20:49:03 sthen Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		3

CATEGORIES =		security

HOMEPAGE =		http://storkhole.cz/software/ikeman/

MAINTAINER =		Martin Pelikan <martin.pelikan@gmail.com>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB +=		c crypto curses

NO_TEST =		Yes

FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
