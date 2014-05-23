# $OpenBSD: Makefile,v 1.4 2014/05/23 12:33:30 sthen Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		1

CATEGORIES =		security

HOMEPAGE =		http://storkhole.cz/software/ikeman/

MAINTAINER =		Martin Pelikan <martin.pelikan@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB +=		c crypto ncurses

NO_TEST =		Yes

FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
