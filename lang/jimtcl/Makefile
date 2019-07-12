# $OpenBSD: Makefile,v 1.21 2019/07/12 20:47:19 sthen Exp $

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.77pl2
SHARED_LIBS =		jim 2.5
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =		c crypto execinfo m sqlite3 ssl z

MASTER_SITES =		https://chiselapp.com/user/stwo/repository/tarballia/uv/

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc

LIB_DEPENDS =		databases/sqlite3 \
			devel/libexecinfo

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

CONFIGURE_ARGS +=	--enable-shared \
			--includedir='$${prefix}/include/jim' \
			--docdir='$${prefix}/share/doc/jim' \
			--full \
			--with-mod='sqlite3 zlib' \
			CCACHE=none

CONFIGURE_ENV +=	WRAPPER=${WRKSRC}/configure \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/{initjimsh.tcl,examples.{api,ext}/Makefile}

.include <bsd.port.mk>
