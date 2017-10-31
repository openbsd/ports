# $OpenBSD: Makefile,v 1.10 2017/10/31 07:33:22 bentley Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.4.10

CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>
