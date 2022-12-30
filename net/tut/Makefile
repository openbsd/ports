COMMENT =	TUI for Mastodon with vim inspired keys

MODGO_MODNAME =	github.com/RasmusLindroth/tut
MODGO_VERSION =	v0.0.0-20221229133513-a7651728e477

DISTNAME =	tut-1.0.31

CATEGORIES =	net

HOMEPAGE =	https://tut.anv.nu/

MAINTAINER =	Omar Polo <op@openbsd.org>

# MIT
PERMIT_PACKAGE = Yes

WANTLIB = c pthread

MODULES =	lang/go

WRKDIST =	${WRKSRC}

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tut
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/tut
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/tut/
.for i in config.example.ini config/toot.tmpl config/user.tmpl
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/examples/tut
.endfor
	${INSTALL_MAN} ${WRKSRC}/docs/man/tut.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/docs/man/tut.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKSRC}/docs/man/tut.7 ${PREFIX}/man/man7

.include "modules.inc"
.include <bsd.port.mk>
