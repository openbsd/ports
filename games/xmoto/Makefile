# $OpenBSD: Makefile,v 1.38 2020/07/26 08:54:47 kirby Exp $

COMMENT =	challenging 2D motocross platform game

GH_ACCOUNT = 	xmoto
GH_PROJECT = 	xmoto
GH_TAGNAME = 	0.6.1

CATEGORIES =	games

HOMEPAGE =	https://xmoto.tuxfamily.org/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} GL GLU SDL SDL_mixer
WANTLIB += SDL_net SDL_ttf bz2 c curl intl jpeg m ode
WANTLIB += png sqlite3 xdg-basedir xml2 z

# C++11
COMPILER =	base-clang ports-gcc

MODULES=	devel/cmake lang/lua
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
RUN_DEPENDS =	devel/desktop-file-utils
BUILD_DEPENDS =	devel/gettext,-runtime \
		devel/gettext,-tools

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="-I${LOCALBASE}/include \
				-I${X11BASE}/include -I${MODLUA_INCL_DIR}"
CXXFLAGS +=		-Wno-mismatched-tags

NO_TEST =		Yes

# stop picking up included ode, bzip2 and lua
post-extract:
	rm -r ${WRKDIST}/vendor/{bzip2,ode,lua}

post-patch:
	${SUBST_CMD} ${WRKDIST}/src/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xmoto/
	${INSTALL_DATA} ${WRKSRC}/COPYING ${PREFIX}/share/doc/xmoto/

.include <bsd.port.mk>
