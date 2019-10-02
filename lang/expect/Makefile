# $OpenBSD: Makefile,v 1.73 2019/10/02 18:34:28 jasper Exp $

COMMENT =	sophisticated scripter based on Tcl/Tk

VERSION =	5.45
DISTNAME =	expect${VERSION}
PKGNAME =	expect-${VERSION}
REVISION =	7
SHARED_LIBS =	expect545 0.0
CATEGORIES =	lang
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=expect/}

HOMEPAGE =	https://core.tcl-lang.org/expect/index
# PD
PERMIT_PACKAGE =	Yes

WANTLIB += c util m ${MODTCL_WANTLIB}

MODULES =		lang/tcl
LIB_DEPENDS +=		${MODTCL_LIB_DEPENDS}

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.59
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--libdir=${MODTCL_TCLDIR} \
			--with-tclconfig="${MODTCL_LIBDIR}" \
			--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV +=	SHLIB_VERSION=${LIBexpect545_VERSION} \
			CFLAGS="-I${MODTCL_INCDIR}"

FAKE_FLAGS =		PKG_DIR=expect
TEST_TARGET =		test

post-configure:
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/example/*

.include <bsd.port.mk>
