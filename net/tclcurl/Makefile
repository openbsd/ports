# $OpenBSD: Makefile,v 1.31 2019/05/20 22:15:20 naddy Exp $

COMMENT =	Tcl bindings for Curl

V =		7.19.6

DISTNAME =	TclCurl-${V}
CATEGORIES =	net
REVISION =	7
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  crypto curl iconv intl nghttp2 ssl z

MASTER_SITES =	https://distfiles.nl/
MODULES =	lang/tcl
LIB_DEPENDS =	devel/gettext,-runtime \
		net/curl
BUILD_DEPENDS =	${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTCL_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=tclcurl INSTALL_LIBRARY='$$(INSTALL_DATA)'
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		CFLAGS="${CFLAGS} -pthread"

NO_TEST =	Yes
SUBST_VARS =	VER

VER =		${V:S/.//g}

.include <bsd.port.mk>
