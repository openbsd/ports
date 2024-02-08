COMMENT =		code search and replace tool

GH_ACCOUNT =		dalance
GH_PROJECT =		amber
GH_TAGNAME =		v0.6.0

CATEGORIES =		textproc sysutils
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
