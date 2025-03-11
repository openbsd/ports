COMMENT =		decode AArch64 ESR register values

V =			0.2.3pl20250306
GH_ACCOUNT =		google
GH_PROJECT =		aarch64-esr-decoder
GH_COMMIT =		52814acc4c97f5beb80cf0dc67d4188ebdb9145b
DISTNAME =		${GH_PROJECT}-$V

HOMEPAGE =		https://esr.arm64.dev/

MAINTAINER =		Theo Buehler <tb@openbsd.org>

CATEGORIES =		sysutils devel

# Apache 2
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
