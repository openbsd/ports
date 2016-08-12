# $OpenBSD: Makefile,v 1.1.1.1 2016/08/12 09:20:01 jasper Exp $

COMMENT =		simple, portable library for handling UTF-8 strings

VERSION =		2.3.4
DISTNAME =		utf8_v${VERSION:S/./_/g}
PKGNAME =		utfcpp-${VERSION}

CATEGORIES =		devel

HOMEPAGE =		http://utfcpp.sourceforge.net/

MAINTAINER =		Sergey Bronnikov <estetus@gmail.com>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=utfcpp/}
EXTRACT_SUFX =		.zip

NO_TEST =		Yes

WRKDIST =		${WRKDIR}
NO_BUILD =		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/include{,/utf8}
	${INSTALL_DATA} ${WRKDIR}/source/*.* ${PREFIX}/include
	${INSTALL_DATA} ${WRKDIR}/source/utf8/*.* ${PREFIX}/include/utf8/

.include <bsd.port.mk>
