# on OpenBSD, modernc.org/sqlite only supports these
ONLY_FOR_ARCHS =	amd64 aarch64

COMMENT =		simple bookmarks manager

MODGO_MODNAME =		github.com/go-shiori/shiori
MODGO_VERSION =		v1.6.3

DISTNAME =		shiori-${MODGO_VERSION}

CATEGORIES =		www

HOMEPAGE =		https://github.com/go-shiori/shiori

MAINTAINER =		Paco Esteban <paco@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB +=		c pthread

MODULES =		lang/go

NO_TEST =		Yes

SEPARATE_BUILD =	Yes

.include "modules.inc"
.include <bsd.port.mk>
