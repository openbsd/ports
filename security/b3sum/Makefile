COMMENT =		command line BLAKE3 checksum utility

V =			1.8.5
PKGNAME =		b3sum-${V}

DIST_TUPLE =		github BLAKE3-team BLAKE3 ${V} .

WRKSRC =		${WRKDIST}/b3sum

CATEGORIES =		security
HOMEPAGE =		https://github.com/BLAKE3-team/BLAKE3

# CC0-1.0 or Apache-2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
