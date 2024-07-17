COMMENT	=		library implementing QUIC and HTTP/3

# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =		sparc64

VERSION =		0.22.0
GH_ACCOUNT =		cloudflare
GH_PROJECT =		quiche
GH_TAGNAME =		${VERSION}
CATEGORIES =		net

MAINTAINER =		Otto Moerbeek <otto@drijf.net>

# BSD-2-Clause
PERMIT_PACKAGE =	Yes

MODCARGO_BUILD_ARGS +=	--no-default-features --features ffi --package quiche

MODULES +=		devel/cargo

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

NO_TEST =		Yes
MODCARGO_INSTALL =	No

do-install:
	${INSTALL_DATA} ${WRKSRC}/quiche/include/quiche.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKBUILD}/target/release/libquiche.a  ${PREFIX}/lib


SUBST_VARS +=	VERSION

post-install:
	${SUBST_CMD} -c -o ${SHAREOWN} -g ${SHAREGRP} -m ${SHAREMODE} \
	    ${FILESDIR}/quiche.pc.in ${PREFIX}/lib/pkgconfig/quiche.pc

.include "crates.inc"

.include <bsd.port.mk>
