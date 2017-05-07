# $OpenBSD: Makefile,v 1.5 2017/05/07 20:50:20 stu Exp $

COMMENT =	confine pointer and keyboard events to a Tk window sub-tree

DISTNAME =	byzi-0.2
CATEGORIES =	x11
HOMEPAGE =	http://github.com/aryler/Byzi
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =	aryler
GH_PROJECT =	Byzi
GH_TAGNAME =	0.2

WANTLIB =	X11
MODULES =	x11/tk
MODTK_VERSION =	8.5
BUILD_DEPENDS =	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
FAKE_FLAGS =	PKG_DIR=byzi
SEPARATE_BUILD =Yes
USE_GROFF =	Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS+=--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR}

TEST_IS_INTERACTIVE = X11
TEST_TARGET = test

.include <bsd.port.mk>
