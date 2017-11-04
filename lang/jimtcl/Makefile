# $OpenBSD: Makefile,v 1.19 2017/11/04 15:37:17 stu Exp $

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.77pl1
SHARED_LIBS =		jim 2.4
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c crypto execinfo m sqlite3 ssl z

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_COMMIT =		57eb43959e993e6166a09e4d883ab0e944f7b4af

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
