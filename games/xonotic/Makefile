# $OpenBSD: Makefile,v 1.3 2019/07/12 20:46:27 sthen Exp $

ONLY_FOR_ARCHS =	i386 amd64

COMMENT-main =		fast-paced first person shooter
COMMENT-data =		fast-paced first person shooter, data files
COMMENT-server =	fast-paced first person shooter, server

MULTI_PACKAGES =	-main -data -server

V =			0.8.2
REVISION =		0
DISTNAME =		xonotic-${V}
PKGNAME-main =		xonotic-${V}
PKGNAME-data =		xonotic-data-${V}
PKGNAME-server =	xonotic-server-${V}
EXTRACT_SUFX =		.zip

CATEGORIES =		games x11
MASTER_SITES =		https://dl.xonotic.org/
HOMEPAGE =		https://xonotic.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c curl jpeg m png z
WANTLIB-main =		${WANTLIB} SDL2 X11
WANTLIB-main +=		ogg png theora vorbis vorbisenc vorbisfile
WANTLIB-data =		# empty

LIB_DEPENDS-main =	audio/libvorbis \
			devel/sdl2 \
			multimedia/libtheora \
			${LIB_DEPENDS-server}
LIB_DEPENDS-server =	graphics/jpeg \
			graphics/png \
			net/curl

RUN_DEPENDS-main =	${BASE_PKGPATH},-data
RUN_DEPENDS-server =	${BASE_PKGPATH},-data

MAKE_FLAGS =		CC="${CC}" \
			CFLAGS_LIBJPEG="-I${LOCALBASE}/include -DLINK_TO_LIBJPEG" \
			CPUOPTIMIZATIONS="${CFLAGS}" \
			DP_FS_BASEDIR="${PREFIX}/share/xonotic" \
			DP_LINK_TO_LIBJPEG=1 \
			DP_PRELOAD_DEPENDENCIES=1

USE_GMAKE =		Yes

NO_TEST =		Yes

MAKE_FILE =		makefile
PKG_ARCH-data =		*
WRKDIST =		${WRKDIR}/Xonotic
WRKSRC =		${WRKDIST}/source/darkplaces

ALL_TARGET =		sdl-release sv-release

do-install:
.for p in dedicated sdl
	${INSTALL_PROGRAM} ${WRKBUILD}/darkplaces-${p} ${PREFIX}/bin/xonotic-${p}
.endfor
.for d in xonotic/data examples/xonotic xonotic/server/rcon2irc
	${INSTALL_DATA_DIR} ${PREFIX}/share/${d}/
.endfor
	${INSTALL_DATA} ${WRKDIST}/data/*.pk3 ${PREFIX}/share/xonotic/data/
	${INSTALL_DATA} ${WRKDIST}/server/{server,help}.cfg \
	    ${PREFIX}/share/examples/xonotic/
	${INSTALL_DATA} ${WRKDIST}/server/rcon.pl \
	    ${PREFIX}/share/xonotic/server/
	${INSTALL_DATA} ${WRKDIST}/server/rcon2irc/* \
	    ${PREFIX}/share/xonotic/server/rcon2irc/

.include <bsd.port.mk>
