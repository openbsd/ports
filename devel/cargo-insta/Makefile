COMMENT =		cargo subcommand for snapshot testing

V =			1.44.2
DISTNAME =		cargo-insta-$V
DISTFILES +=		cargo-insta-$V{source}${EXTRACT_SUFX}

HOMEPAGE =		https://github.com/mitsuhiko/insta/

SITES =			https://github.com/mitsuhiko/insta/releases/download/$V/

CATEGORIES =		devel

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

MODCARGO_INSTALL_TARGET_PATHS = cargo-insta

# most of the functional tests fail in offline mode
do-test:
	${MAKE} -C ${WRKSRC} cargotest

.include "crates.inc"

.include <bsd.port.mk>
