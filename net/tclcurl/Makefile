# $OpenBSD: Makefile,v 1.28 2016/11/04 11:35:20 sthen Exp $

COMMENT =	Tcl bindings for Curl

DISTNAME =	TclCurl-7.19.6
SHARED_LIBS =	TclCurl7196 0.0
CATEGORIES =	net
REVISION =	4
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += crypto curl nghttp2 ssl z

MASTER_SITES =	https://distfiles.nl/
MODULES =	lang/tcl devel/gettext
LIB_DEPENDS =	net/curl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tclcurl \
		INSTALL_LIBRARY='${INSTALL_DATA}'

SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBTclCurl7196_VERSION} \
		CFLAGS="${CFLAGS} -pthread"

NO_TEST =	Yes

.include <bsd.port.mk>
