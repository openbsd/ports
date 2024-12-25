COMMENT =	wordle game for the terminal

MODGO_MODNAME =	github.com/ajeetdsouza/clidle
MODGO_VERSION =	v0.1.0

DISTNAME =	clidle-${MODGO_VERSION}

CATEGORIES =	games

HOMEPAGE =	https://github.com/ajeetdsouza/clidle

MAINTAINER =	Stefan Hagen <sh+ports@codevoid.de>

# MIT
PERMIT_PACKAGE =	yes

MODULES =		lang/go

WANTLIB += c pthread

WRKDIST =	$(WRKSRC)

.include "modules.inc"

.include <bsd.port.mk>
