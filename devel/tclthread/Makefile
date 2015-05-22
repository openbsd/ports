# $OpenBSD: Makefile,v 1.4 2015/05/22 04:21:42 stu Exp $

COMMENT =	thread extension for Tcl

V =		2.7.2
DISTNAME =	thread${V}
PKGNAME =	tclthread-${V}
SHARED_LIBS =	tclthread${V:S/.//g} 0.0
CATEGORIES =	devel
HOMEPAGE =	http://tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tclthread \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

TEST_FLAGS =		PACKAGE_NAME=Thread

SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			SHLIB_VERSION=${LIBtclthread${V:S/.//g}_VERSION}

TEST_TARGET =	test

.include <bsd.port.mk>
