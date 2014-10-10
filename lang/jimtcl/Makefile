# $OpenBSD: Makefile,v 1.10 2014/10/10 19:58:21 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.75pl2
SHARED_LIBS =		jim 2.0
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m sqlite3

GH_ACCOUNT =		msteveb
GH_PROJECT =		jimtcl
#GH_TAGNAME =		0.75 # Tag lag
GH_COMMIT =		20e9c4c1decdadcec69e43bd7c14f51996baf94c

MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc

MAKE_FLAGS =		LIBJIM=libjim.so.${LIBjim_VERSION} \
			SH_CFLAGS=${PICFLAG} \
			SHOBJ_CFLAGS=${PICFLAG} \
			SH_LDFLAGS=-shared

FAKE_FLAGS =		INSTALL_DATA_DIR='${INSTALL_DATA_DIR}' \
			INSTALL_DATA='${INSTALL_DATA}' \
			INSTALL_PROGRAM='${INSTALL_PROGRAM}' \
			INSTALL_SCRIPT='${INSTALL_SCRIPT}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/jim \
			--full \
			--with-mod=sqlite3 \
			CCACHE=none

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/examples.{api,ext}/Makefile

.include <bsd.port.mk>
