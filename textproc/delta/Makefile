COMMENT =		viewer for git and diff output

GH_ACCOUNT =		dandavison
GH_PROJECT =		delta
GH_TAGNAME =		0.16.5

CATEGORIES =		textproc

MAINTAINER =		Laurent Cheylus <foxy@free.fr>

HOMEPAGE =		https://github.com/dandavison/delta

# MIT
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc
WANTLIB +=		${MODCARGO_WANTLIB} m git2 onig

MODULES =		devel/cargo

LIB_DEPENDS +=		devel/libgit2/libgit2 \
			textproc/oniguruma

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

.include "crates.inc"

.include <bsd.port.mk>
