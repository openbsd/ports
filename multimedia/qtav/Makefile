# $OpenBSD: Makefile,v 1.7 2020/03/14 12:21:07 naddy Exp $

COMMENT =	FFmpeg-based Qt multimedia framework

GH_ACCOUNT =	wang-bin
GH_PROJECT =	QtAV
GH_TAGNAME =	v1.12.0
REVISION =	3

PKGNAME =	${DISTNAME:L}

# for libtool- or cmake-based ports, have a look at WRKBUILD/shared_libs.log
SHARED_LIBS =	QtAV		0.0
SHARED_LIBS +=	QtAVWidgets	0.0

CATEGORIES =	multimedia

HOMEPAGE =	https://www.qtav.org/

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5OpenGL
WANTLIB += Qt5Qml Qt5Quick Qt5Widgets X11 Xext Xv ass avcodec
WANTLIB += avdevice avfilter avformat avresample avutil m openal
WANTLIB += pulse swresample swscale uchardet

MODULES =		devel/qmake \
			x11/qt5

RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

LIB_DEPENDS =		audio/openal \
			audio/pulseaudio \
			graphics/ffmpeg \
			textproc/uchardet \
			x11/qt5/qtdeclarative

MODQMAKE_ENV +=		TRUEPREFIX=${TRUEPREFIX}

SUBST_VARS =		QT5_VERSION

# The examples are GLPv3 licencensed and have too generic names, like 'Player',
# so don't install them.
MODQMAKE_ARGS +=	CONFIG+=no-examples

NO_TEST =		Yes

.include <bsd.port.mk>
