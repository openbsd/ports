# $OpenBSD: Makefile,v 1.10 2019/07/12 20:46:02 sthen Exp $

COMMENT =		thread extension for Tcl

V =			2.8.2

DISTNAME =		thread${V}
PKGNAME =		tclthread-${V}
SHARED_LIBS =		tclthread${V:S/.//g} 0.0
CATEGORIES =		devel
HOMEPAGE =		http://tcl.sourceforge.net/
MAINTAINER =		Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=tcl/}
MODULES =		lang/tcl
MODTCL_VERSION =	8.6
BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS}
RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=tclthread \
			pkglibdir='$$(libdir)/tcl/$$(PKG_DIR)'

TEST_FLAGS =		PACKAGE_NAME=Thread

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			SHLIB_VERSION=${LIBtclthread${V:S/.//g}_VERSION}

TEST_TARGET =		test

.include <bsd.port.mk>
