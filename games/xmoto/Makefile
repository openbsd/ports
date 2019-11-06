# $OpenBSD: Makefile,v 1.36 2019/11/06 16:19:52 cwen Exp $

COMMENT =	challenging 2D motocross platform game

V =	 	0.5.11
REVISION =	9
DISTNAME =	xmoto-${V}-src
PKGNAME =	xmoto-${V}
CATEGORIES =	games

HOMEPAGE =	http://xmoto.tuxfamily.org/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

MASTER_SITES =	https://download.tuxfamily.org/xmoto/xmoto/${V}/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} GL GLU SDL SDL_mixer
WANTLIB += SDL_net SDL_ttf X11 bz2 c curl iconv intl jpeg lzma m ode
WANTLIB += png sqlite3 xdg-basedir xml2 z

MODULES=	lang/lua
MODLUA_SA=	Yes
LIB_DEPENDS =	archivers/bzip2 \
		databases/sqlite3 \
		devel/ode \
		devel/sdl-mixer \
		devel/sdl-net \
		devel/sdl-ttf \
		graphics/jpeg \
		graphics/png \
		net/curl \
		textproc/libxml \
		x11/libxdg-basedir \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS = 	devel/desktop-file-utils

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	autoreconf
CONFIGURE_ENV =		CPPFLAGS="`pkg-config --cflags libpng sqlite3 sdl ${MODLUA_DEP}` -DSVN_REV='\"${V}\"'" \
			LDFLAGS="`pkg-config --libs libpng sdl ${MODLUA_DEP}` -lGL"
AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68
CXXFLAGS +=		-Wno-mismatched-tags

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

# stop picking up included ode
post-extract:
	rm -r ${WRKDIST}/src/ode

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/extra/xmoto.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/extra/xmoto.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
