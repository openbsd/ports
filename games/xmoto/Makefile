# $OpenBSD: Makefile,v 1.17 2014/07/08 11:11:15 kirby Exp $

COMMENT =	challenging 2D motocross platform game

V =	 	0.5.10
DISTNAME =	xmoto-${V}-src
PKGNAME =	xmoto-${V}
REVISION = 	0
CATEGORIES =	games

MAINTAINER =	Antti Harri <iku@openbsd.fi>
HOMEPAGE =	http://xmoto.tuxfamily.org/

MASTER_SITES =	http://download.tuxfamily.org/xmoto/xmoto/${V}/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL GLU SDL SDL_mixer SDL_net SDL_ttf X11 bz2 c curl jpeg
WANTLIB += ${MODLUA_WANTLIB} m ode png pthread sqlite3 stdc++ xdg-basedir xml2 z

MODULES=	devel/gettext \
		lang/lua
MODLUA_SA=	Yes
BUILD_DEPENDS = ${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS}
LIB_DEPENDS =	archivers/bzip2 \
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

CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		CPPFLAGS="`pkg-config --cflags libpng sqlite3 sdl ${MODLUA_DEP}` -DSVN_REV='\"${V}\"'" \
			LDFLAGS="`pkg-config --libs libpng sdl ${MODLUA_DEP}` -lGL"
AUTOMAKE_VERSION =	1.11
AUTOCONF_VERSION =	2.68

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/${DISTNAME:S/-src//}

pre-configure:
	cd ${WRKSRC} && \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} \
		AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		autoreconf -fi

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA} ${WRKSRC}/{COPYING,README} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/extra/xmoto.desktop ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/extra/xmoto.xpm ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
