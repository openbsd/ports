COMMENT =	query the unicode database from the commandline

MODGO_MODNAME =	zgo.at/uni/v2
MODGO_VERSION =	v2.8.0
DISTNAME =	uni-${MODGO_VERSION}

HOMEPAGE =	https://github.com/arp242/uni

CATEGORIES =	textproc

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

# don't force a dep on dmenu, but make this available
post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/dmenu-uni ${PREFIX}/bin/

.include "modules.inc"
.include <bsd.port.mk>
