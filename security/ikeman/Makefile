# $OpenBSD: Makefile,v 1.10 2021/10/21 09:33:34 tb Exp $

COMMENT =		interactive PKI manager for isakmpd(8) or iked(8)
DISTNAME =		ikeman-0.2
REVISION =		6

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
