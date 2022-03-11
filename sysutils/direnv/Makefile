COMMENT =		tool for managing environment based on current directory

GH_ACCOUNT =		direnv
GH_PROJECT =		direnv
GH_TAGNAME =		v2.26.0
REVISION =		0

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

do-build:
	${MODGO_BUILD_CMD} github.com/direnv/direnv/...

do-install:
	$(INSTALL_PROGRAM) $(MODGO_WORKSPACE)/bin/direnv $(PREFIX)/bin
	${INSTALL_MAN} ${WRKSRC}/man/*.1 $(PREFIX)/man/man1/

do-test:
	${MODGO_CMD} test github.com/direnv/direnv/...

.include <bsd.port.mk>
