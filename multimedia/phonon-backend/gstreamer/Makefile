# $OpenBSD: Makefile,v 1.17 2016/05/27 03:41:30 zhuk Exp $

COMMENT-main =	GStreamer-based Phonon backend
COMMENT-icons =	GStreamer-based Phonon backend icons
VERSION =	4.8.2
DISTNAME =	phonon-backend-gstreamer-${VERSION}
PKGNAME-main =	${PKGNAME}
PKGNAME-icons =	phonon-gstreamer-icons-${VERSION}
HOMEPAGE =	https://projects.kde.org/projects/kdesupport/phonon/phonon-gstreamer
REVISION-main =	3
REVISION-icons =0

FULLPKGNAME-main =	${PKGNAME}
FULLPKGPATH-main =	${PKGPATH},${FLAVOR},-main

# deconflict Qt4 and Qt5 versions by extracting common data
MULTI_PACKAGES =	-main -icons

# icons are same, so not reason to have different packages
PKG_ARCH-icons =	*

RUN_DEPENDS-icons =	x11/gtk+3,-guic
# allow playing Vorbis and MP3 notification sounds out of the box
RUN_DEPENDS-main =	multimedia/gstreamer1/plugins-good \
			multimedia/gstreamer1/plugins-libav \
			${BASE_PKGPATH},-icons

LIB_DEPENDS-icons =
LIB_DEPENDS-main =	${LIB_DEPENDS} \
			multimedia/gstreamer1/core \
			multimedia/gstreamer1/plugins-base

WANTLIB-icons =
WANTLIB-main =	${WANTLIB} GL m
WANTLIB-main +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-main +=	gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB-main +=	gstreamer-1.0 gstvideo-1.0 gstapp-1.0

FLAVORS =	qt5
FLAVOR ?=
.if ${FLAVOR:Mqt5}
WANTLIB-main +=		Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets
.else
WANTLIB-main +=		QtGui QtOpenGL
.endif

.include <bsd.port.mk>
