# $OpenBSD: Makefile,v 1.4 2016/12/31 14:51:47 pascal Exp $

COMMENT =	simple off-line blog utility

DISTNAME =	sblg-0.3.10

CATEGORIES =	www

HOMEPAGE =	https://kristaps.bsd.lv/sblg/

MAINTAINER =	Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c expat

MASTER_SITES =		https://kristaps.bsd.lv/sblg/snapshots/

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

ALL_TARGET =		sblg

.include <bsd.port.mk>
