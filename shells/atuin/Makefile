# ring-v0.17 does not support this arch
NOT_FOR_ARCHS =	sparc64

COMMENT =	Magical shell history

DISTNAME =	atuin-${V}
V = 		18.10.0

DIST_TUPLE +=	github atuinsh atuin v${V} .

CATEGORIES =	shells

HOMEPAGE =	https://atuin.sh/

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += ${MODCARGO_WANTLIB} m

MODULES =	devel/cargo

MODCARGO_CRATES_KEEP += libsqlite3-sys
MODCARGO_INSTALL_TARGET_PATHS += crates/atuin

SEPARATE_BUILD =	Yes

CONFIGURE_STYLE =	cargo

.include "crates.inc"
.include <bsd.port.mk>
