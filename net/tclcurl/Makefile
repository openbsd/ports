# $OpenBSD: Makefile,v 1.19 2011/01/05 19:30:26 stu Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl bindings for Curl

DISTNAME =	TclCurl-7.19.6
SHARED_LIBS =	TclCurl7196 0.0
CATEGORIES =	net
HOMEPAGE =	http://personal.iddeo.es/andresgarci/tclcurl/english/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	crypto idn ssl z curl>=2.2

MASTER_SITES =	${HOMEPAGE:H:H:=/download/tarball/}
MODULES =	lang/tcl
LIB_DEPENDS =	net/curl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tclcurl \
		INSTALL_LIBRARY='${INSTALL_DATA}'

SEPARATE_BUILD =concurrent
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBTclCurl7196_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

NO_REGRESS =	Yes

.include <bsd.port.mk>
