COMMENT =	sophisticated scripter based on Tcl/Tk

VERSION =	5.45.4
DISTNAME =	expect${VERSION}
PKGNAME =	expect-${VERSION}
SHARED_LIBS =	expect5454 0.0
CATEGORIES =	lang
SITES =		${SITE_SOURCEFORGE:=expect/}

HOMEPAGE =	https://core.tcl-lang.org/expect/index
# PD
PERMIT_PACKAGE =	Yes

WANTLIB += c util m ${MODTCL_WANTLIB}

MODULES =		lang/tcl
LIB_DEPENDS +=		${MODTCL_LIB_DEPENDS}

SEPARATE_BUILD =	Yes
AUTOCONF_VERSION =	2.69
CONFIGURE_STYLE =	autoconf no-autoheader
CONFIGURE_ARGS +=	--libdir=${MODTCL_TCLDIR} \
			--with-tclconfig="${MODTCL_LIBDIR}" \
			--with-tclinclude="${MODTCL_INCDIR}"
CONFIGURE_ENV +=	SHLIB_VERSION=${LIBexpect5454_VERSION} \
			CFLAGS="-I${MODTCL_INCDIR}"

FAKE_FLAGS =		PKG_DIR=expect
TEST_TARGET =		test

post-configure:
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/example/*

.include <bsd.port.mk>
