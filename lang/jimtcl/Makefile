# $OpenBSD: Makefile,v 1.11 2015/04/10 14:35:36 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.76pl0
SHARED_LIBS =		jim 2.1
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m sqlite3

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
GH_COMMIT =		af59339f008ae4eff13b0fea0eeff21a9d1e8b6c

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc

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

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/jim \
			--full \
			--with-mod=sqlite3 \
			CCACHE=none

CONFIGURE_ENV +=	WRAPPER=${WRKSRC}/configure

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/{initjimsh.tcl,examples.{api,ext}/Makefile}

.include <bsd.port.mk>
