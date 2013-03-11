# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:25 espie Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		0

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
