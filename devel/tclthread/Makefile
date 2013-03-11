# $OpenBSD: Makefile,v 1.2 2013/03/11 10:50:31 espie Exp $

COMMENT =	thread extension for Tcl

DISTNAME =	thread2.7.0
PKGNAME =	tclthread-2.7.0
SHARED_LIBS =	thread270 0.0
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
			PKG_HEADERS=""

SEPARATE_BUILD =	Yes
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--mandir=${PREFIX}/man \
			SHLIB_VERSION=${LIBthread270_VERSION}

TEST_TARGET =	test

.include <bsd.port.mk>
