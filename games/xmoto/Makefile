COMMENT =	challenging 2D motocross platform game

GH_ACCOUNT = 	xmoto
GH_PROJECT = 	xmoto
GH_TAGNAME = 	v0.6.2

CATEGORIES =	games

HOMEPAGE =	https://xmoto.tuxfamily.org/

MAINTAINER =	Kirill Bychkov <kirby@openbsd.org>

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} ${MODLUA_WANTLIB} GL GLU SDL2
WANTLIB += SDL2_mixer SDL2_net SDL2_ttf bz2 c curl intl jpeg
WANTLIB += m ode png sqlite3 xdg-basedir xml2 z

# C++11
COMPILER =	base-clang ports-gcc

MODULES=	devel/cmake lang/lua
MODLUA_SA=	Yes
LIB_DEPENDS =	archivers/bzip2 \
		databases/sqlite3 \
		devel/ode \
		devel/sdl2-mixer \
		devel/sdl2-net \
		devel/sdl2-ttf \
		graphics/jpeg \
		graphics/png \
		net/curl \
		textproc/libxml \
		x11/libxdg-basedir \
		${MODLUA_LIB_DEPENDS}
RUN_DEPENDS =	devel/desktop-file-utils
BUILD_DEPENDS =	devel/gettext,-runtime \
		devel/gettext,-tools

CXXFLAGS +=	-I${LOCALBASE}/include -I${X11BASE}/include
CXXFLAGS +=	-I${MODLUA_INCL_DIR} -Wno-mismatched-tags
MODCMAKE_LDFLAGS =	-L${X11BASE}/lib -L${LOCALBASE}/lib

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
