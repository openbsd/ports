# $OpenBSD: Makefile,v 1.18 2017/09/24 10:44:24 sthen Exp $

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.77pl0
REVISION =		0
SHARED_LIBS =		jim 2.3
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto execinfo m sqlite3 ssl z

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_COMMIT =		31a9f433f06b8cc426d281436a628a5fdd3bf755

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
