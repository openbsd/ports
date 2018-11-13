# $OpenBSD: Makefile,v 1.4 2018/11/13 08:55:42 bentley Exp $

COMMENT =		convert Texinfo data to mdoc input

DISTNAME =		texi2mdoc-0.1.2
REVISION =		2

CATEGORIES =		textproc

HOMEPAGE =		https://mandoc.bsd.lv/texi2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		https://mandoc.bsd.lv/texi2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

.include <bsd.port.mk>
