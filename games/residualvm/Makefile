# $OpenBSD: Makefile,v 1.18 2019/07/12 20:46:23 sthen Exp $

COMMENT =		interpreter for some LucasArts 3D games

V =			0.3.1
DISTNAME =		residualvm-${V}-sources
PKGNAME =		residualvm-${V}
REVISION =		1

CATEGORIES =		games

HOMEPAGE =		http://residualvm.org/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL GLEW GLU SDL2 c freetype iconv jpeg m mad mpeg2
WANTLIB += ogg png sndio theoradec vorbis vorbisfile z

MASTER_SITES =		http://www.residualvm.org/downloads/release/${V}/

LIB_DEPENDS =		audio/libmad \
			audio/libvorbis \
			converters/libiconv \
			devel/sdl2 \
			graphics/glew \
			graphics/jpeg \
			graphics/libmpeg2 \
			graphics/png \
			multimedia/libtheora
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic

# GCC 4.2.1 miscompiles this on at least ppc, so play safe and
# just use a newer compiler everywhere.
COMPILER =		base-clang ports-gcc

SEPARATE_BUILD =	Yes
USE_GMAKE =		Yes
CONFIGURE_STYLE =	simple
CONFIGURE_ARGS +=	--enable-verbose-build \
			--enable-sndio \
			--mandir=${PREFIX}/man
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/residualvm-${V}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/dists/residualvm.desktop ${PREFIX}/share/applications/

.include <bsd.port.mk>
