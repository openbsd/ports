# $OpenBSD: Makefile,v 1.62 2013/05/15 09:46:28 sebastia Exp $

COMMENT=	sophisticated scripter based on Tcl/Tk

VERSION =	5.45
DISTNAME=	expect${VERSION}
PKGNAME =	expect-${VERSION}
SHARED_LIBS=	expect545 0.0
CATEGORIES=	lang
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=expect/}

HOMEPAGE=	http://expect.nist.gov/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/tcl
WANTLIB +=	${MODTCL_WANTLIB}
WANTLIB += 	c util m
LIB_DEPENDS +=	${MODTCL_LIB_DEPENDS}

SEPARATE_BUILD=	Yes
AUTOCONF_VERSION = 2.59
CONFIGURE_STYLE=autoconf no-autoheader
CONFIGURE_ARGS+=${CONFIGURE_SHARED}

CONFIGURE_ARGS+=--with-tclconfig="${MODTCL_LIBDIR}" \
		--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV+=	SHLIB_VERSION=${LIBexpect545_VERSION} \
		CFLAGS="-I${MODTCL_INCDIR}"

CONFIGURE_ARGS+=--libdir=${MODTCL_TCLDIR}

FAKE_FLAGS =		PKG_DIR=expect	
TEST_TARGET =	test

.include <bsd.port.mk>
