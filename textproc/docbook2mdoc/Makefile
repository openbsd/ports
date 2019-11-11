# $OpenBSD: Makefile,v 1.11 2019/11/11 08:14:18 bentley Exp $

COMMENT =		DocBook to mdoc converter

DISTNAME =		docbook2mdoc-1.1.0

CATEGORIES =		textproc

HOMEPAGE =		https://mandoc.bsd.lv/docbook2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		https://mandoc.bsd.lv/docbook2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

do-install:
	${INSTALL} ${WRKDIST}/docbook2mdoc ${PREFIX}/bin
	${INSTALL} ${WRKDIST}/docbook2mdoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
