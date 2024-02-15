COMMENT =	wordle game for the terminal

MODGO_MODNAME =	github.com/ajeetdsouza/clidle
MODGO_VERSION =	v0.0.0-20240212215927-a12e6d5652db


# GH_ACCOUNT =	c0dev0id
# GH_PROJECT =	clidle
# GH_COMMIT =	a12e6d5652dba23fdbd7c4ded27f1950a5cc93de

DISTNAME =	clidle-${MODGO_VERSION}
PKGNAME =	clidle-0.0.0pl20240212

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
