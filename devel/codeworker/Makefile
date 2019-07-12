# $OpenBSD: Makefile,v 1.16 2019/07/12 20:44:06 sthen Exp $

COMMENT =		universal parsing tool & source code generator

V =			4.5.4
PKGNAME =		codeworker-${V}
REVISION =		6

CATEGORIES =		devel

HOMEPAGE =		http://codeworker.free.fr/

# LGPL
PERMIT_PACKAGE =	Yes

WANTLIB =		c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=codeworker/} \
			http://codeworker.free.fr/downloads/
DISTNAME =		CodeWorker_SRC${V:S/./_/g}
EXTRACT_SUFX =		.zip

MAKE_FLAGS =		CXXFLAGS='${CXXFLAGS}' CXX='${CXX}'

USE_GMAKE =		Yes

NO_TEST =		Yes

WRKDIST=${WRKDIR}/CodeWorker${V:S/./_/g}

do-install:
	${INSTALL_PROGRAM} ${WRKDIST}/codeworker ${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIST}/libcodeworker.a ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/codeworker
	${INSTALL_DATA} ${WRKSRC}/Documentation/* ${PREFIX}/share/examples/codeworker

.include <bsd.port.mk>
