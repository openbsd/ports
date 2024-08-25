COMMENT =		simple, fast and user-friendly alternative to 'find'

GH_ACCOUNT =		sharkdp
GH_PROJECT =		fd
GH_TAGNAME =		v10.2.0

CATEGORIES =		sysutils

# MIT/Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${MODCARGO_WANTLIB} pthread

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

MODCARGO_NO_DEFAULT_FEATURES =	Yes
MODCARGO_FEATURES =	completions
MODCARGO_INSTALL =	No
USE_GMAKE =		Yes

.include "crates.inc"

.include <bsd.port.mk>
