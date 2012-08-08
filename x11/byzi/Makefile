# $OpenBSD: Makefile,v 1.1.1.1 2012/08/08 11:36:29 stu Exp $

SHARED_ONLY =	Yes

COMMENT =	confine pointer and keyboard events to a Tk window sub-tree

DISTNAME =	byzi-0.1
SHARED_LIBS =	byzi01 0.0
CATEGORIES =	x11
HOMEPAGE =	http://www3.bell.net/stwo/index.html
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11
MASTER_SITES =	http://www3.bell.net/stwo/software/
MODULES =	x11/tk
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=byzi
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		SHLIB_VERSION=${LIBbyzi01_VERSION}

REGRESS_IS_INTERACTIVE = X11
REGRESS_TARGET = test

.include <bsd.port.mk>
