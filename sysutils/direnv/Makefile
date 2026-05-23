COMMENT =		tool for managing environment based on current directory

MODGO_MODNAME =		github.com/direnv/direnv/v2
MODGO_VERSION =		v2.37.1

DISTNAME =		direnv-${MODGO_VERSION}

MAINTAINER=		Ashton Fagg <ashton@fagg.id.au>
CATEGORIES =		sysutils devel
HOMEPAGE =		https://direnv.net

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB =		c pthread

MODULES =		lang/go

# Unfortunately, this needs bash at runtime because all the shell
# stuff that happens underneath gets spawned in a bash subprocess
# (even if the shell you're hooking isn't bash...go figure).
RUN_DEPENDS =		shells/bash

# Remove some unneeded stuff. These are just Github CI hooks.
pre-build:
	rm -rf ${WRKSRC}/script

do-install:
	$(INSTALL_PROGRAM) $(MODGO_WORKSPACE)/bin/direnv $(PREFIX)/bin
	${INSTALL_MAN} ${WRKSRC}/man/*.1 $(PREFIX)/man/man1/

.include "modules.inc"
.include <bsd.port.mk>
