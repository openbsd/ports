COMMENT =	command-line RDAP (Registration Data Access Protocol) client

MODGO_MODNAME =	github.com/openrdap/rdap
MODGO_VERSION =	v0.10.0

DISTNAME =	openrdap-${MODGO_VERSION}

CATEGORIES =	net

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/rdap ${PREFIX}/bin/openrdap

.include "modules.inc"
.include <bsd.port.mk>
