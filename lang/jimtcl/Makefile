# $OpenBSD: Makefile,v 1.8 2014/09/11 03:49:27 stu Exp $

SHARED_ONLY =		Yes

COMMENT =		small footprint implementation of Tcl

DISTNAME =		jimtcl-0.75pl0
SHARED_LIBS =		jim 1.1
CATEGORIES =		lang devel
HOMEPAGE =		http://jim.tcl.tk/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m sqlite3

# Git checkin		2013/11/09 fae001d74c06a6293798d6b27db874ff46610a42
MASTER_SITES =		http://mirror.arieslabs.com/openbsd/

MODULES =		lang/tcl
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			textproc/asciidoc

MAKE_FLAGS =		LIBJIM=libjim.so.${LIBjim_VERSION} \
			SH_CFLAGS=${PICFLAG} \
			SHOBJ_CFLAGS=${PICFLAG} \
			SH_LDFLAGS=-shared

FAKE_FLAGS =		INSTALL_DATA_DIR='${INSTALL_DATA_DIR}' \
			INSTALL_DATA='${INSTALL_DATA}' \
			INSTALL_PROGRAM='${INSTALL_PROGRAM}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	simple

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--includedir=${PREFIX}/include/jim \
			--full \
			--with-mod=sqlite3 \
			CCACHE=none

.include <bsd.port.mk>
