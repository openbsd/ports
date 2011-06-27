# $OpenBSD: Makefile,v 1.2 2011/06/27 13:29:52 sthen Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		0

CATEGORIES =		security

HOMEPAGE =		http://storkhole.cz/software/ikeman/

MAINTAINER =		Martin Pelikan <martin.pelikan@gmail.com>

# ISC
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB +=		c crypto ncurses

NO_REGRESS =		Yes

FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

.include <bsd.port.mk>
