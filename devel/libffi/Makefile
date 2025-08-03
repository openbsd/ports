COMMENT=		Foreign Function Interface

V=			3.5.2
DISTNAME=		libffi-$V

SHARED_LIBS +=  ffi                  2.4      # 10.0

CATEGORIES=		devel

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

HOMEPAGE=		https://sourceware.org/libffi/

# BSD
PERMIT_PACKAGE=	Yes

# needed for unwind symbols
.if ${MACHINE_ARCH} == "arm"
WANTLIB += c++abi
.endif

SITES=			https://github.com/libffi/libffi/releases/download/v$V/

DEBUG_PACKAGES=		${BUILD_PACKAGES}

USE_GMAKE=		Yes

TEST_DEPENDS=		devel/dejagnu

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--disable-multi-os-directory

FAKE_FLAGS=		includesdir="${PREFIX}/include"

.include <bsd.port.mk>
