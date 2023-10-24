COMMENT	=		library implementing QUIC and HTTP/3

# ring-v0.16.20 does not support those archs
NOT_FOR_ARCHS =		powerpc64 riscv64 sparc64

V =			0.18.0
PKG_NAME =		quiche-${V}
CATEGORIES =		net
HOMEPAGE =		https://github.com/cloudflare/quiche

MAINTAINER =		Otto Moerbeek <otto@drijf.net>

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

GH_ACCOUNT =		cloudflare
GH_PROJECT =		quiche
GH_TAGNAME =		${V}
EXTRACT_SUFX =		.tar.gz

BUILD_DEPENDS +=	security/rust-ring

MODCARGO_BUILD_ARGS +=	--no-default-features --features ffi --package quiche

MODULES +=		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

NO_TEST =		Yes
MODCARGO_INSTALL =	No

do-install:
	${INSTALL_DATA} ${WRKSRC}/quiche/include/quiche.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/target/release/libquiche.a  ${PREFIX}/lib

.include "crates.inc"

.include <bsd.port.mk>
