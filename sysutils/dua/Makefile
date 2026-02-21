COMMENT =		disk usage analyzer

V =			2.33.0
GH_ACCOUNT =            Byron
GH_PROJECT =            dua-cli
GH_TAGNAME =            v${V}
PKGNAME =               dua-${V}

CATEGORIES =		sysutils
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT + deps
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"
.include <bsd.port.mk>
