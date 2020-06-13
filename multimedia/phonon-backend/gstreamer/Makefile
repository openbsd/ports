# $OpenBSD: Makefile,v 1.26 2020/06/13 16:22:52 rsadowski Exp $

COMMENT-main =	GStreamer-based Phonon backend
COMMENT-icons =	GStreamer-based Phonon backend icons
VERSION =	4.9.1
DISTNAME =	phonon-backend-gstreamer-${VERSION}
PKGNAME-main =	${PKGNAME}
PKGNAME-icons =	phonon-gstreamer-icons-${VERSION}

MASTER_SITES =		https://download.kde.org/stable/phonon/phonon-backend-gstreamer/${VERSION}/

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
WANTLIB-main =	${WANTLIB} ${COMPILER_LIBCXX} GL m
WANTLIB-main +=	glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-main +=	gstaudio-1.0 gstbase-1.0 gstpbutils-1.0
WANTLIB-main +=	gstreamer-1.0 gstvideo-1.0 gstapp-1.0

FLAVORS =	qt5
FLAVOR =	qt5
.if ${FLAVOR:Mqt5}
LIB_DEPENDS-main +=	x11/qt5/qtx11extras
WANTLIB-main +=		Qt5Core Qt5Gui Qt5OpenGL Qt5Widgets Qt5X11Extras
.else
WANTLIB-main +=		QtGui QtOpenGL
.endif

WRKDIST =		${WRKDIR}/phonon-gstreamer-${VERSION}

.include <bsd.port.mk>
