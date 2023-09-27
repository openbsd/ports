COMMENT=	OpenSSL Tcl extension

VERSION=	1.7.22

DISTNAME=	tcltls-${VERSION}

CATEGORIES=	security

HOMEPAGE=	http://core.tcl-lang.org/tcltls/

MAINTAINER=	Stuart Cassoff <stwo@users.sourceforge.net>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	ssl crypto

SITES=		${HOMEPAGE:=uv/}

MODULES=	lang/tcl
MODTCL_VERSION=	8.6
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
BUILD_DEPENDS=	${RUN_DEPENDS}

FAKE_FLAGS =	PACKAGE_INSTALL_DIR='$$(TCL_PACKAGE_PATH)/tcltls' \
		INSTALL_PROGRAM='$$(INSTALL_DATA)'

TEST_FLAGS =	TESTFLAGS='${TESTFLAGS}'
SEPARATE_BUILD =Yes
CONFIGURE_STYLE=gnu

CONFIGURE_ARGS=	--libdir=${MODTCL_TCLDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--includedir=${PREFIX}/include/tcltls \
		--disable-rpath \
		--enable-deterministic \
		--enable-ssl-fastpath

# Tcltls configure will always choose tclsh8.6 (if installed) over tclsh8.5.
# Ensure that the tclsh chosen matches MODTCL_VERSION.
CONFIGURE_ENV += TCLSH_NATIVE=${MODTCL_BIN}

TEST_TARGET=	test

# Use TESTFLAGS to control the Tcltls tests
TESTFLAGS =

# --enable-ssl-fastpath is the preferred option
# but these tests will fail without it.
# tlsIO-9.2 tlsIO-2.11 tlsIO-12.3
# To be revisited.
# 
# Use premade DH primes instead of generating new; builds faster.
# --enable-deterministic

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tcltls/
	${INSTALL_DATA} ${WRKDIST}/tls.htm \
		${PREFIX}/share/doc/tcltls/

.include <bsd.port.mk>
