# $OpenBSD: Makefile,v 1.5 2011/01/05 17:47:49 sebastia Exp $

SHARED_ONLY =	Yes

COMMENT =	system tray icon support for Tk

DISTNAME =	tktray1.3.9
PKGNAME =	tktray-1.3.9
REVISION =	0
SHARED_LIBS =	tktray139 0.0
CATEGORIES =	x11
HOMEPAGE =	http://code.google.com/p/tktray/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11

MASTER_SITES =	http://tktray.googlecode.com/files/
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}

FAKE_FLAGS =	PKG_DIR=tktray \
		INSTALL_LIBRARY='${INSTALL_DATA}'

SEPARATE_BUILD=	concurrent
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--datadir=${PREFIX}/share/examples \
		SHLIB_VERSION=${LIBtktray139_VERSION}

REGRESS_IS_INTERACTIVE = X11
REGRESS_TARGET = test

.include <bsd.port.mk>
