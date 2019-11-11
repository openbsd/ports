# $OpenBSD: Makefile,v 1.11 2019/11/11 08:14:18 bentley Exp $

COMMENT =		convert POD data to mdoc input

DISTNAME =		pod2mdoc-0.2
REVISION =		1

CATEGORIES =		textproc

HOMEPAGE =		http://mandoc.bsd.lv/pod2mdoc/

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB += c util

MASTER_SITES =		http://mandoc.bsd.lv/pod2mdoc/snapshots/
EXTRACT_SUFX =		.tgz

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS="${CFLAGS}"

NO_TEST =		Yes

ALL_TARGET =		pod2mdoc

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/pod2mdoc ${PREFIX}/bin
	${INSTALL_MAN} ${WRKDIST}/pod2mdoc.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
