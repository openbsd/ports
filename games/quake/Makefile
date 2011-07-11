# $OpenBSD: Makefile,v 1.35 2011/07/11 16:33:06 jasper Exp $

COMMENT-main =		Quake/QuakeWorld client
COMMENT-libs =		Quake common libs
COMMENT-server =	QuakeWorld server

# .so.1.0
SOMAJOR =		0
SOMINOR =		0
V =			20110710
DISTNAME =		quakeforge-$V
PKGNAME-main =		quake-$V
PKGNAME-libs =		quake-libs-$V
FULLPKGNAME-server =	quakeworld-server-$V
FULLPKGPATH-server =	games/quake,-server
EPOCH-server =		0

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
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB-main =		c m ncurses z X11 Xau Xdmcp Xext Xxf86dga Xxf86vm crypto \
			iconv pthread pthread-stubs ssl usbhid xcb \
			SDL curl idn intl png QFcd QFconsole QFgamecode QFgib \
			QFjs QFimage QFmodels_gl QFmodels_sw QFrenderer_gl \
			QFrenderer_sw32 QFruamoko QFsound QFutil sndio
WANTLIB-libs =		m ncurses usbhid z iconv SDL png ogg \
			vorbis vorbisfile samplerate sndio
WANTLIB-server =	c m ncurses z QFconsole QFgamecode QFgib QFmodels QFruamoko QFutil \
			QFimage png pthread

MASTER_SITES =		http://openbsd.fi/dist/

MODULES =		devel/gettext
BUILD_DEPENDS =		devel/bison
LIB_DEPENDS-server =	${FULLPKGNAME-libs}:${BUILD_PKGPATH},-libs
LIB_DEPENDS-main =	${FULLPKGNAME-libs}:${BUILD_PKGPATH},-libs \
			devel/libidn \
			devel/sdl \
			net/curl \
			graphics/png \
			audio/flac
LIB_DEPENDS-libs =	devel/sdl \
			graphics/png \
			audio/flac \
			audio/libvorbis \
			audio/libsamplerate

USE_GMAKE =		Yes

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--with-clients=glx,sdl,sdl32,sgl,x11 \
			--with-ipv6 \
			--with-gl-driver=libGL.so \
			--with-cd-default=SDL \
			--with-sharepath=${PREFIX}/share/quakeforge \
			--enable-version-info=${SOMAJOR}:${SOMINOR} \
			--disable-oss \
			--disable-sun \
			--disable-jack
CONFIGURE_ENV =		LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib' \
			CPPFLAGS='-I${LOCALBASE}/include -I${X11BASE}/include' \
			YACC="bison -y"
# Quakeforge should automatically detect support for assembler
# optimizations on i386, however it's currently not linking
# correctly so disable until a fix exists.
.if ${MACHINE_ARCH:Mi386}
CONFIGURE_ARGS +=	--disable-asmopt
.endif

NO_REGRESS =		Yes

CFLAGS +=		-pthread

.include <bsd.port.mk>
