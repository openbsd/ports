# $OpenBSD: Makefile,v 1.23 2021/11/12 12:02:01 sthen Exp $

COMMENT =		small footprint implementation of Tcl

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_TAGNAME =		0.80

SHARED_LIBS =		jim 3.0
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto execinfo m sqlite3 ssl util z

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}

LIB_DEPENDS =		databases/sqlite3

MAKE_FLAGS =		LIBJIM=libjim.so.${LIBjim_VERSION} \
			SH_CFLAGS=${PICFLAG} \
			SHOBJ_CFLAGS=${PICFLAG}

FAKE_FLAGS =		INSTALL_DATA_DIR='${INSTALL_DATA_DIR}' \
			INSTALL_DATA='${INSTALL_DATA}' \
			INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_SCRIPT='${INSTALL_SCRIPT}'

CONFIGURE_STYLE =	simple
CONFIGURE_SCRIPT =	${MODTCL_BIN} ${WRKSRC}/autosetup/autosetup

CONFIGURE_ARGS +=	--enable-shared \
			--includedir='$${prefix}/include/jim' \
			--disable-docs \
			--docdir='$${prefix}/share/doc/jim' \
			--full \
			--with-mod=sqlite3,zlib \
			CCACHE=none

CONFIGURE_ENV +=	WRAPPER=${WRKSRC}/configure \
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
