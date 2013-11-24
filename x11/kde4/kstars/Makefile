# $OpenBSD: Makefile,v 1.2 2013/11/24 19:56:32 zhuk Exp $

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

WANTLIB =  c m pthread stdc++ z
WANTLIB += GL GLU ICE SM X11 Xext
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtOpenGL
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/knewstuff3
WANTLIB += cfitsio wcs

MODULES =	lang/python
MODPY_BUILDDEP =No

LIB_DEPENDS = 	astro/wcslib \
		math/cfitsio

BUILD_DEPENDS =	math/eigen2 \
		x11/xplanet

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic \
		x11/xplanet

post-patch:
	${SUBST_CMD} ${WRKSRC}/kstars/skycomponents/supernovaecomponent.cpp

.include <bsd.port.mk>
