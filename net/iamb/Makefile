COMMENT =		matrix client for vim addicts

GH_ACCOUNT =		ulyssa
GH_PROJECT =		iamb
GH_TAGNAME =		v0.0.8

HOMEPAGE =		https://iamb.chat

CATEGORIES =		net

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		devel/cargo

.include "crates.inc"

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes
WANTLIB =		${MODCARGO_WANTLIB} m

BUILD_DEPENDS =		security/rust-ring \
			textproc/oniguruma

.include <bsd.port.mk>
