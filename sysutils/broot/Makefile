COMMENT =		new way to see and navigate directory trees

GH_ACCOUNT =		Canop
GH_PROJECT =		broot
GH_TAGNAME =		v1.39.0

CATEGORIES =		sysutils

HOMEPAGE =		https://dystroy.org/broot/

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m onig z

MODULES =		devel/cargo
MODCARGO_CRATES_KEEP += libgit2-sys

CONFIGURE_STYLE =	cargo

LIB_DEPENDS +=		textproc/oniguruma

SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
