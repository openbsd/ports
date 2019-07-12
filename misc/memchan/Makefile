# $OpenBSD: Makefile,v 1.13 2019/07/12 20:47:51 sthen Exp $

COMMENT =		in-memory channels for Tcl

DISTNAME =		Memchan2.3
PKGNAME =		memchan-2.3
REVISION =		1
SHARED_LIBS =		Memchan23 0.0
CATEGORIES =		misc
HOMEPAGE =		http://memchan.sourceforge.net/
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=memchan/}
MODULES =		lang/tcl

BUILD_DEPENDS =		${MODTCL_BUILD_DEPENDS} \
			devel/tcllib

RUN_DEPENDS =		${MODTCL_RUN_DEPENDS}

FAKE_FLAGS =		PKG_DIR=memchan \
			INSTALL_PROGRAM='${INSTALL_DATA}'

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

CONFIGURE_ARGS +=	--with-tcl=${MODTCL_LIBDIR} \
			--libdir=${MODTCL_TCLDIR} \
			--includedir=${PREFIX}/include/memchan \
			SHLIB_VERSION=${LIBMemchan23_VERSION}

TEST_TARGET =	test
WRKDIST =		${WRKDIR}/Memchan2.3

.include <bsd.port.mk>
