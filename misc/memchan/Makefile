# $OpenBSD: Makefile,v 1.6 2011/01/05 18:16:58 sebastia Exp $

SHARED_ONLY =		Yes

COMMENT =		in-memory channels for Tcl

DISTNAME =		Memchan2.3
PKGNAME =		memchan-2.3
SHARED_LIBS =		Memchan23 0.0
CATEGORIES =		misc
HOMEPAGE =		http://memchan.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=memchan/}
MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			devel/tcllib

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=memchan \
			INSTALL_PROGRAM='${INSTALL_DATA}'

SEPARATE_BUILD =	concurrent
USE_GROFF =		Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--includedir=${PREFIX}/include/memchan \
			SHLIB_VERSION=${LIBMemchan23_VERSION}

REGRESS_TARGET =	test
WRKDIST =		${WRKDIR}/Memchan2.3

.include <bsd.port.mk>
