ONLY_FOR_ARCHS =	${GO_ARCHS}

COMMENT =	expressive programming language and versatile shell
CATEGORIES =	shells

MODGO_MODNAME =	src.elv.sh
MODGO_VERSION =	v0.16.3

GH_ACCOUNT =	elves
GH_PROJECT =	elvish
GH_TAGNAME =	${MODGO_VERSION}
REVISION =	0

HOMEPAGE =	https://elv.sh/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

NO_TEST =	Yes

.include "modules.inc"

.include <bsd.port.mk>
