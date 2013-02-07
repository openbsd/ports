# $OpenBSD: Makefile,v 1.1.1.1 2013/02/07 22:56:07 stu Exp $

COMMENT =	thread extension for Tcl

DISTNAME =	thread2.7.0
PKGNAME =	tclthread-2.7.0
SHARED_LIBS =	thread270 0.0
CATEGORIES =	devel
HOMEPAGE =	http://tcl.sourceforge.net/
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

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

REGRESS_TARGET =	test

.include <bsd.port.mk>
