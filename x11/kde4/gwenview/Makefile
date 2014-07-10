# $OpenBSD: Makefile,v 1.10 2014/07/10 09:10:13 zhuk Exp $

COMMENT =	KDE image viewer
DISTNAME =	gwenview-${MODKDE4_VERSION}
REVISION =	0

SHARED_LIBS =	gwenviewlib               51.0 # 4.7

WANTLIB =  c m pthread z
WANTLIB += X11
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtSvg lib/qt4/QtXml lib/qt4/QtOpenGL
WANTLIB += ${KDE4LIB}/baloocore ${KDE4LIB}/baloofiles ${KDE4LIB}/baloopim
WANTLIB += ${KDE4LIB}/kactivities ${KDE4LIB}/kdcraw
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kfile
WANTLIB += ${KDE4LIB}/kio ${KDE4LIB}/kipi ${KDE4LIB}/konq ${KDE4LIB}/kparts
WANTLIB += ${KDE4LIB}/nepomuk ${KDE4LIB}/nepomukutils ${KDE4LIB}/solid
WANTLIB += exiv2 jpeg lcms2 png soprano

MODULES =	multimedia/phonon

BUILD_DEPENDS =	misc/shared-desktop-ontologies

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-desktop-ontologies \
		x11/gtk+2,-guic

LIB_DEPENDS = 	databases/soprano>=${MIN_SOPRANO_VERSION} \
		graphics/exiv2 \
		graphics/jpeg \
		graphics/lcms2 \
		graphics/png \
		${MODKDE4_DEP_DIR}/baseapps>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/kactivities>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkdcraw>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/libkipi>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/baloo>=${MODKDE4_DEP_VERSION}

.include <bsd.port.arch.mk>

.if ${ARCH} == "i386"
CONFIGURE_ENV =                CXXFLAGS="${CXXFLAGS} -DOPENBSD_LIBKDCRAW_NO_CRASH=0"
.else
CONFIGURE_ENV =                CXXFLAGS="${CXXFLAGS} -DOPENBSD_LIBKDCRAW_NO_CRASH=1"
.endif

.include <bsd.port.mk>
