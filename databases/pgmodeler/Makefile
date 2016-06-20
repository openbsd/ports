# $OpenBSD: Makefile,v 1.1.1.1 2016/06/20 09:45:38 feinerer Exp $

COMMENT =	PostgreSQL Database Modeler

VERSION =	0.8.2
DISTNAME =	pgmodeler-${VERSION}

GH_ACCOUNT =	pgmodeler
GH_PROJECT =	pgmodeler
GH_TAGNAME =	v${VERSION}

SHARED_LIBS +=  objrenderer	0.0 # 1.0
SHARED_LIBS +=  parsers		0.0 # 1.0
SHARED_LIBS +=  pgconnector	0.0 # 1.0
SHARED_LIBS +=  pgmodeler	0.0 # 1.0
SHARED_LIBS +=  pgmodeler_ui	0.0 # 1.0
SHARED_LIBS +=  utils		0.0 # 1.0

CATEGORIES =	databases

HOMEPAGE =	http://www.pgmodeler.com.br/

MAINTAINER =	Ingo Feinerer <feinerer@logic.at>

# GPLv3 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5Gui Qt5Network Qt5PrintSupport Qt5Svg
WANTLIB += Qt5Widgets X11 Xext c execinfo m pq pthread xml2

MODULES =		devel/qmake \
			x11/qt5
MODQMAKE_PROJECTS =	pgmodeler.pro
MODQMAKE_ARGS =		DOCDIR=${PREFIX}/share/doc/pgmodeler \
			NO_UPDATE_CHECK=1 \
			PREFIX=${PREFIX} \
			SAMPLESDIR=${PREFIX}/share/examples/pgmodeler
LIB_DEPENDS =		databases/postgresql

SEPARATE_BUILD =	No
USE_GMAKE =		Yes

NO_TEST =		Yes

post-patch:
	sed -i -e 's/linux/unix/' \
	       -e 's/^ BUILDNUM=.*/ BUILDNUM=${VERSION}/' ${WRKSRC}/pgmodeler.pri

post-install:
	mkdir ${PREFIX}/lib/pgmodeler/plugins

.include <bsd.port.mk>
