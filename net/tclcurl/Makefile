# $OpenBSD: Makefile,v 1.22 2012/12/21 12:13:35 sthen Exp $

SHARED_ONLY =	Yes

COMMENT =	Tcl bindings for Curl

DISTNAME =	TclCurl-7.19.6
SHARED_LIBS =	TclCurl7196 0.0
CATEGORIES =	net
REVISION =	1
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	crypto idn ssl z curl>=2.2

MASTER_SITES =	http://distfiles.nl/
MODULES =	lang/tcl devel/gettext
LIB_DEPENDS =	net/curl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tclcurl \
		INSTALL_LIBRARY='${INSTALL_DATA}'

SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBTclCurl7196_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

NO_REGRESS =	Yes

.include <bsd.port.mk>
