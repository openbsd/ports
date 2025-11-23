# ring-v0.17.8 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =		tunnel all your traffic over Websocket or HTTP2

GH_ACCOUNT =		erebe
GH_PROJECT =		wstunnel
GH_TAGNAME =		v10.5.0

CATEGORIES =		net

MAINTAINER =		Christoph Liebender <christoph@liebender.dev>

# BSD-3
PERMIT_PACKAGE =	Yes

# uses unveil(2)
WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

MODCARGO_RUSTFLAGS =	-C debuginfo=0
MODCARGO_NO_DEFAULT_FEATURES = Yes
MODCARGO_FEATURES =	ring
MODCARGO_BUILD_ARGS +=	--package wstunnel-cli

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/wstunnel ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
