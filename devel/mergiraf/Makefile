BROKEN-sparc64 =	treesitter-yaml build fails with SIGABRT

COMMENT =		syntax-aware git merge driver

V =			0.16.1
PKGNAME =		mergiraf-$V

WRKDIST =		${WRKDIR}/mergiraf
DIST_TUPLE =		codeberg mergiraf mergiraf v$V .

HOMEPAGE =		https://mergiraf.org/

CATEGORIES =		devel

MAINTAINER =		Theo Buehler <tb@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

COMPILER =		base-clang ports-gcc

WANTLIB +=		${MODCARGO_WANTLIB} m

MODULES =		devel/cargo

CONFIGURE_STYLE =	cargo

SEPARATE_BUILD =	Yes

.include "crates.inc"
.include <bsd.port.mk>
