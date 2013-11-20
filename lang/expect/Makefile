# $OpenBSD: Makefile,v 1.65 2013/11/20 15:58:31 sthen Exp $

COMMENT =	sophisticated scripter based on Tcl/Tk

VERSION =	5.45
DISTNAME =	expect${VERSION}
PKGNAME =	expect-${VERSION}
REVISION =	1
SHARED_LIBS =	expect545 0.0
CATEGORIES =	lang
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=expect/}

HOMEPAGE =	http://expect.nist.gov/
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c util m ${MODTCL_WANTLIB}

MODULES =		lang/tcl
LIB_DEPENDS +=		${MODTCL_LIB_DEPENDS}

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--libdir=${MODTCL_TCLDIR} \
			--with-tclconfig="${MODTCL_LIBDIR}" \
			--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV +=	SHLIB_VERSION=${LIBexpect545_VERSION} \
			CFLAGS="-I${MODTCL_INCDIR}"

FAKE_FLAGS =		PKG_DIR=expect
TEST_TARGET =		test

post-configure:
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/example/*

.include <bsd.port.mk>
