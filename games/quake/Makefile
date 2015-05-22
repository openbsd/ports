# $OpenBSD: Makefile,v 1.42 2015/05/22 11:31:14 ajacoutot Exp $

COMMENT-main =		Quake/QuakeWorld client
COMMENT-libs =		Quake common libs
COMMENT-server =	QuakeWorld server

# .so.1.0
SOMAJOR =		0
SOMINOR =		0
V =			0.6.0
DISTNAME =		quakeforge-$V
PKGNAME-main =		quake-$V
PKGNAME-libs =		quake-libs-$V
FULLPKGNAME-server =	quakeworld-server-$V
FULLPKGPATH-server =	games/quake,-server
EPOCH-main =		0
EPOCH-libs =		0
EPOCH-server =		1
REVISION-libs =		0
REVISION-main =		0
REVISION-server =	0

MULTI_PACKAGES =	-main -libs -server

SHARED_LIBS +=		QFcd		${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFconsole	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFgamecode	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFgib		${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFimage		${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFjs		${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFmodels	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFmodels_gl	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFmodels_sw	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFrenderer_gl	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFrenderer_sw32	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFruamoko	${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFsound		${SOMAJOR}.${SOMINOR}
SHARED_LIBS +=		QFutil		${SOMAJOR}.${SOMINOR}

CATEGORIES =		games x11

HOMEPAGE =		http://www.quakeforge.net/

MAINTAINER =		Antti Harri <iku@openbsd.fi>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main += QFcd QFconsole QFgamecode QFgib QFimage QFjs QFmodels
WANTLIB-main += QFmodels_gl QFmodels_sw QFrenderer_gl QFrenderer_sw32
WANTLIB-main += QFruamoko QFsound QFutil SDL X11 Xext Xxf86dga Xxf86vm
WANTLIB-main += c crypto idn m ncurses png pthread sndio ssl usbhid
WANTLIB-main += xcb z curl ${MODGETTEXT_WANTLIB}

WANTLIB-libs += FLAC SDL m ncurses ogg png samplerate sndio usbhid
WANTLIB-libs += vorbis vorbisfile z iconv

WANTLIB-server += QFconsole QFgamecode QFgib QFimage QFmodels QFruamoko
WANTLIB-server += QFutil c m ncurses png pthread z

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=quake/}
EXTRACT_SUFX =		.tar.bz2

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/bison
LIB_DEPENDS-server =	${FULLPKGNAME-libs}:${BUILD_PKGPATH},-libs
LIB_DEPENDS-main =	${FULLPKGNAME-libs}:${BUILD_PKGPATH},-libs \
			audio/flac \
			devel/libidn \
			devel/sdl \
			graphics/png \
			net/curl 
LIB_DEPENDS-libs =	audio/flac \
			audio/libsamplerate \
			audio/libvorbis \
			devel/sdl \
			graphics/png

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-clients=glx,sdl,sdl32,sgl,x11 \
			--with-gl-driver=libGL.so \
			--with-cd-default=SDL \
			--with-sharepath=${PREFIX}/share/quakeforge \
			--enable-version-info=${SOMAJOR}:${SOMINOR} \
			--disable-asmopt \
			--disable-oss \
			--disable-sun \
			--disable-jack
YACC =			bison

NO_TEST =		Yes

.include <bsd.port.mk>
