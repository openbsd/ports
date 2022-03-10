COMMENT =	TLS-only IRC logger

DISTNAME =	litterbox-1.8

CATEGORIES =	net

HOMEPAGE =	https://git.causal.agency/litterbox/about/

MAINTAINER =	Omar Polo <op@omarpolo.com>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c sqlite3 tls

LIB_DEPENDS =		databases/sqlite3

MASTER_SITES =		https://git.causal.agency/litterbox/snapshot/

# C11
COMPILER =		base-clang ports-gcc
COMPILER_LANGS =	c

FAKE_FLAGS =		PREFIX=${TRUEPREFIX}

CONFIGURE_STYLE =	simple

NO_TEST =		Yes

.include <bsd.port.mk>
