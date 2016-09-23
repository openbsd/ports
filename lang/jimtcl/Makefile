# $OpenBSD: Makefile,v 1.15 2016/09/23 09:16:55 sthen Exp $

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.76pl1
SHARED_LIBS =		jim 2.2
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>
REVISION =		0

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m sqlite3

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_COMMIT =		20fb65ac241531c216aff64cd158cd8797128d49

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc
LIB_DEPENDS =		databases/sqlite3

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
			--with-mod=sqlite3 \
			CCACHE=none

CONFIGURE_ENV +=	WRAPPER=${WRKSRC}/configure \
			CFLAGS="${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib"

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/{initjimsh.tcl,examples.{api,ext}/Makefile}

.include <bsd.port.mk>
