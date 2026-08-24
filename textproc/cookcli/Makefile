COMMENT =		command line tool for working with Cooklang recipes

V =			0.34.0
DISTNAME =		cook-$V-source
PKGNAME =		cookcli-$V

CATEGORIES =		textproc

HOMEPAGE =		https://cooklang.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

# C1x
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += ${MODCARGO_WANTLIB} m sqlite3

SITES =			https://github.com/cooklang/cookcli/releases/download/v${V}/

MODULES =		devel/cargo
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

NO_TEST =		Yes

WRKDIST =		${WRKDIR}/cookcli-$V

.include "crates.inc"
.include <bsd.port.mk>
