# $OpenBSD: Makefile,v 1.6 2019/04/18 02:06:48 schwarze Exp $

COMMENT =		DocBook to mdoc converter

DISTNAME =		docbook2mdoc-1.0.0

CATEGORIES =		textproc

HOMEPAGE =		https://mandoc.bsd.lv/docbook2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

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
