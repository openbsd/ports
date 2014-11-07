# $OpenBSD: Makefile,v 1.4 2014/11/07 10:05:29 landry Exp $

SHARED_ONLY =	Yes
CATEGORIES =	devel
COMMENT=	Qt-based library that maps JSON data to QVariant objects
DISTNAME =	qjson-0.8.1
REVISION =	0
HOMEPAGE =	http://qjson.sourceforge.net/

SHARED_LIBS =	qjson	0.0

MODULES =	devel/cmake x11/qt4
WANTLIB =	m stdc++

MASTER_SITES =	https://github.com/downloads/flavio/qjson/
EXTRACT_SUFX =	.tar.bz2
TAR =		${LOCALBASE}/bin/gtar

# LGPLv2
PERMIT_PACKAGE_CDROM =		Yes

BUILD_DEPENDS =	devel/doxygen \
		archivers/gtar
DOCSDIR =	${PREFIX}/share/doc/qjson

# Test list taken from ${WRKSRC}/tests/CMakeLists.txt
CONFIGURE_ARGS =	-DQJSON_BUILD_TESTS:Bool=Yes
UNIT_TESTS =		testparser \
			testqobjecthelper \
			testserializer

post-build:
	cd ${WRKSRC}/doc && doxygen

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	cd ${WRKSRC}/doc/html && find . -type d -print0 | \
		(cd ${DOCSDIR} && xargs -0 ${INSTALL_DATA_DIR})
	find ${WRKSRC}/doc/html -type f -print0 | \
		(cd ${DOCSDIR} && xargs -0 -J % ${INSTALL_DATA} % ${DOCSDIR})

do-test:
.for T in ${UNIT_TESTS}
	cd ${WRKBUILD}/tests && ./$T
.endfor

.include <bsd.port.mk>
