# ring-v0.17.8 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =		tunnel all your traffic over Websocket or HTTP2

GH_ACCOUNT =		erebe
GH_PROJECT =		wstunnel
GH_TAGNAME =		v10.3.0

CATEGORIES =		net

MAINTAINER =		Christoph Liebender <christoph@liebender.dev>

HOMEPAGE =		https://github.com/erebe/wstunnel

# BSD-3
PERMIT_PACKAGE =	Yes

WANTLIB =		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo
MODCARGO_RUSTFLAGS =	-C debuginfo=0
MODCARGO_BUILD_ARGS +=	--package wstunnel-cli

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

do-install:
	${INSTALL_PROGRAM} ${MODCARGO_TARGET_DIR}/release/wstunnel ${PREFIX}/bin/

.include "crates.inc"

.include <bsd.port.mk>
