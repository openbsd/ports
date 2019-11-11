# $OpenBSD: Makefile,v 1.6 2019/11/11 08:14:18 bentley Exp $

COMMENT =		convert Texinfo data to mdoc input

DISTNAME =		texi2mdoc-0.1.2
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://mandoc.bsd.lv/texi2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://mandoc.bsd.lv/texi2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

.include <bsd.port.mk>
