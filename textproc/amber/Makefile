COMMENT =		code search and replace tool

GH_ACCOUNT =		dalance
GH_PROJECT =		amber
GH_TAGNAME =		v${V}

V =			0.5.9
PKGNAME =		amber-${V}
REVISION =		0

CATEGORIES =		textproc sysutils
MAINTAINER =		Edd Barrett <edd@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c c++abi pthread

# as devel/cargo MODULES adds DISTFILES, GH_* didn't
DISTFILES +=		${DISTNAME}${EXTRACT_SUFX}

MODULES =		devel/cargo
CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
