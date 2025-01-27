COMMENT =		new way to see and navigate directory trees

GH_ACCOUNT =		Canop
GH_PROJECT =		broot
GH_TAGNAME =		v1.44.6

CATEGORIES =		sysutils

HOMEPAGE =		https://dystroy.org/broot/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} git2 m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		devel/libgit2/libgit2

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
