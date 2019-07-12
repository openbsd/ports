# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:03 sthen Exp $

COMMENT =		simple, portable library for handling UTF-8 strings

VERSION =		2.3.4
DISTNAME =		utf8_v${VERSION:S/./_/g}
PKGNAME =		utfcpp-${VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		http://utfcpp.sourceforge.net/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=utfcpp/}
EXTRACT_SUFX =		.zip

NO_TEST =		Yes

WRKDIST =		${WRKDIR}
NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include/utfcpp/utf8
	${INSTALL_DATA} ${WRKDIR}/source/*.* ${PREFIX}/include/utfcpp
	${INSTALL_DATA} ${WRKDIR}/source/utf8/*.* ${PREFIX}/include/utfcpp/utf8

.include <bsd.port.mk>
