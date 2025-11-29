COMMENT-main =		small footprint implementation of Tcl
COMMENT-redis =		REDIS extension for Jimtcl
COMMENT-sdl =		SDL extension for Jimtcl
COMMENT-sqlite =	SQLite extension for Jimtcl

MULTI_PACKAGES =	-main -redis -sdl -sqlite

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_TAGNAME =		0.81

SHARED_LIBS =		jim 4.0
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB-main =		c crypto execinfo m ssl util z
WANTLIB-redis =		jim hiredis
WANTLIB-sdl =		jim SDL2 SDL2_gfx-1.0 SDL2_ttf
WANTLIB-sqlite =	jim sqlite3

MODULES =		lang/tcl
MODTCL_VERSION =	8.6

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

LIB_DEPENDS-redis =	lang/jimtcl,-main \
			databases/libhiredis

LIB_DEPENDS-sdl =	lang/jimtcl,-main \
			devel/sdl2-gfx \
			devel/sdl2-ttf

LIB_DEPENDS-sqlite =	lang/jimtcl,-main \
			databases/sqlite3

MAKE_FLAGS =		LIBJIM=libjim.so.${LIBjim_VERSION} \
			SH_CFLAGS=${PICFLAG} \
			SHOBJ_CFLAGS=${PICFLAG}

FAKE_FLAGS =		INSTALL_DATA_DIR='${INSTALL_DATA_DIR}' \
			INSTALL_DATA='${INSTALL_DATA}' \
			INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_SCRIPT='${INSTALL_SCRIPT}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODTCL_BIN} ${WRKSRC}/autosetup/autosetup

CONFIGURE_ARGS =	--enable-shared \
			--includedir='$${prefix}/include/jim' \
			--disable-docs \
			--docdir='$${prefix}/share/doc/jim' \
			--full \
			--compat \
			--with-mod=redis,sdl,sqlite3 \
			CCACHE=none

CONFIGURE_ENV =		WRAPPER=${WRKSRC}/configure \
			CFLAGS="${CFLAGS}" \
			CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@cd ${WRKSRC}; ${SUBST_CMD} \
	    initjimsh.tcl examples.ext/Makefile examples.api/Makefile.in

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/jim
	cd ${WRKSRC}; ${INSTALL_DATA} LICENSE \
	    README{,.extensions,.namespaces,.oo,.sqlite,.utf-8} \
	    ${PREFIX}/share/doc/jim/
	${INSTALL_DATA} ${WRKSRC}/Tcl_shipped.html \
	    ${PREFIX}/share/doc/jim/Tcl.html

.include <bsd.port.mk>
