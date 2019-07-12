# $OpenBSD: Makefile,v 1.15 2019/07/12 20:51:23 sthen Exp $

COMMENT =	system tray icon support for Tk

V =		1.3.9

DISTNAME =	tktray${V}
PKGNAME =	tktray-${V}
REVISION =	4
CATEGORIES =	x11
HOMEPAGE =	https://code.google.com/p/tktray/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	X11

MASTER_SITES =	${MASTER_SITE_GOOGLECODE:=tktray/}
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR='$$(PACKAGE_NAME)' INSTALL_LIBRARY='$$(INSTALL_DATA)'
SEPARATE_BUILD=	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples

TEST_IS_INTERACTIVE = X11
TEST_TARGET =	test
SUBST_VARS =	VER

VER =		${V:S/.//g}

.include <bsd.port.mk>
