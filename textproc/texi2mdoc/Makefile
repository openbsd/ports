# $OpenBSD: Makefile,v 1.3 2017/07/22 21:46:11 bentley Exp $

COMMENT =		convert Texinfo data to mdoc input

DISTNAME =		texi2mdoc-0.1.2
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://mandoc.bsd.lv/texi2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c

MASTER_SITES =		http://mandoc.bsd.lv/texi2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}"

NO_TEST =		Yes

.include <bsd.port.mk>
