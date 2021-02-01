# $OpenBSD: Makefile,v 1.8 2021/02/01 02:01:59 kn Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		4

CATEGORIES =		security

HOMEPAGE =		http://storkhole.cz/software/ikeman/

MAINTAINER =		Martin Pelikan <martin.pelikan@gmail.com>

# ISC
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${HOMEPAGE}

WANTLIB +=		c crypto curses

NO_TEST =		Yes

FAKE_FLAGS =		MANDIR=${PREFIX}/man/man

# XXX seven duplicate symbols
CFLAGS +=		-fcommon

.include <bsd.port.mk>
