# $OpenBSD: Makefile,v 1.7 2014/07/24 14:53:58 zhuk Exp $

COMMENT =	planetarium simulator for KDE
DISTNAME =	kstars-${MODKDE4_VERSION}
REVISION =	0

# Crashed after following actions:
#   1. Enable OpenGL;
#   2. Play with map;
#   3. Go to settings;
#   4. Go to satellites options;
#   5. Update satellites info;
#   6. Enable showing satellites;
#   7. Click "OK".

WANTLIB =  c m pthread z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtDeclarative lib/qt4/QtGui
WANTLIB += lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtScript lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeclarative ${KDE4LIB}/kdeui ${KDE4LIB}/kio
WANTLIB += ${KDE4LIB}/knewstuff3
WANTLIB += cfitsio qjson wcs

# base GCC miscompiles (at least) one object file, Clang fails to compile
MODULES =		lang/python
MODPY_BUILDDEP =	No

LIB_DEPENDS = 	astro/wcslib \
		devel/qjson \
		math/cfitsio

BUILD_DEPENDS =	math/eigen3 \
		x11/xplanet

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/xplanet

# not ported
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_AstrometryNet=Yes \
			-DCMAKE_DISABLE_FIND_PACKAGE_Indy=Yes

post-patch:
	${SUBST_CMD} ${WRKSRC}/kstars/skycomponents/supernovaecomponent.cpp

.include <bsd.port.mk>
