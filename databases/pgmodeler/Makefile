# $OpenBSD: Makefile,v 1.11 2020/04/16 07:01:17 feinerer Exp $

COMMENT =	PostgreSQL Database Modeler

VERSION =	0.9.2

GH_ACCOUNT =	pgmodeler
GH_PROJECT =	pgmodeler
GH_TAGNAME =	v${VERSION}

SHARED_LIBS +=  objrenderer	1.0 # 1.0
SHARED_LIBS +=  parsers		1.0 # 1.0
SHARED_LIBS +=  pgconnector	1.0 # 1.0
SHARED_LIBS +=  pgmodeler	1.0 # 1.0
SHARED_LIBS +=  pgmodeler_ui	1.0 # 1.0
SHARED_LIBS +=  utils		1.0 # 1.0

CATEGORIES =	databases

HOMEPAGE =	https://www.pgmodeler.io

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv3 only
PERMIT_PACKAGE =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets X11 Xext c execinfo m pq pthread xml2
WANTLIB += ${COMPILER_LIBCXX}

CONFIGURE_ENV =		CXXFLAGS="${CXXFLAGS} -std=c++11" \
			LOCALBASE="${LOCALBASE}"

MODULES =		devel/qmake \
			x11/qt5
MODQMAKE_PROJECTS =	pgmodeler.pro tests/tests.pro
MODQMAKE_ARGS =		DOCDIR=${PREFIX}/share/doc/pgmodeler \
			NO_UPDATE_CHECK=1 \
			PREFIX=${PREFIX} \
			SAMPLESDIR=${PREFIX}/share/examples/pgmodeler
LIB_DEPENDS =		databases/postgresql \
			x11/qt5/qtsvg

SEPARATE_BUILD =	No
USE_GMAKE =		Yes

post-patch:
	sed -i -e 's/linux/unix/' \
	       -e 's/^ BUILDNUM=.*/ BUILDNUM=${VERSION}/' ${WRKSRC}/pgmodeler.pri

post-install:
	rm -Rf ${PREFIX}/bin/tests
	${INSTALL_DATA_DIR} ${PREFIX}/lib/pgmodeler/plugins

do-test:
	cd ${WRKBUILD}; \
	for d in lib*/; do \
		LD_LIBRARY_PATH=$${LD_LIBRARY_PATH:+$${LD_LIBRARY_PATH}:}$$PWD/$${d%/}; \
	done; \
	export LD_LIBRARY_PATH; \
	ln -sf ../../../schemas tests/src/databasemodeltest/schemas; \
	okay=true; \
	for t in ${WRKBUILD}/tests/src/*test; do \
		(cd $$t; ./*test) || okay=false; \
	done; \
	$$okay

.include <bsd.port.mk>
