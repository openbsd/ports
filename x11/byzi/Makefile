# $OpenBSD: Makefile,v 1.2 2013/03/11 11:46:08 espie Exp $

SHARED_ONLY =	Yes

COMMENT =	confine pointer and keyboard events to a Tk window sub-tree

DISTNAME =	byzi-0.1
SHARED_LIBS =	byzi01 0.0
CATEGORIES =	x11
HOMEPAGE =	http://www3.bell.net/stwo/index.html
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

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

TEST_IS_INTERACTIVE = X11
TEST_TARGET = test

.include <bsd.port.mk>
