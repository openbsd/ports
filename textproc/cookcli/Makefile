COMMENT =		command line tool for working with Cooklang recipes

V =			0.27.2
GH_ACCOUNT =		cooklang
GH_PROJECT =		cookcli
GH_TAGNAME =		v${V}

CATEGORIES =		textproc

HOMEPAGE =		https://cooklang.org

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# MIT
PERMIT_PACKAGE =	Yes

# C1x
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

WANTLIB += ${MODCARGO_WANTLIB} crypto m sqlite3 ssl

DISTFILES.css =		cookcli-$V-output.css
SITES.css =		https://distfiles.stumpf.co/

EXTRACT_CASES =		*.css) cp ${FULLDISTDIR}/$$archive ${WRKSRC}/static/css/output.css ;;

MODULES =		devel/cargo
LIB_DEPENDS =		databases/sqlite3

CONFIGURE_STYLE =	cargo
SEPARATE_BUILD =	Yes

MODCARGO_CRATES_KEEP =	libsqlite3-sys
MODCARGO_ENV +=		LIBSQLITE3_SYS_USE_PKG_CONFIG=1

NO_TEST =		Yes

output.css:
#	maintainer target to regenerate output.css
	cd ${WRKSRC} && npm i -dd . && npm run -dd build-css

.include "crates.inc"
.include <bsd.port.mk>
