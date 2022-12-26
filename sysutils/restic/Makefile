COMMENT =	fast, efficient and secure backup program

MODGO_MODNAME =	github.com/restic/restic
MODGO_VERSION =	v0.14.0
REVISION =	2

DISTNAME =	restic-${MODGO_VERSION}

CATEGORIES =	sysutils

HOMEPAGE =	https://restic.net/

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

MODGO_FLAGS +=	-tags '!selfupdate'

NO_TEST =	Yes

post-extract:
	# pending https://github.com/restic/restic/pull/4100
	# "Reinstate selfupdate tag to make builds without self-update work"
	sed -i s/' xbuild'/go:build/ ${WRKSRC}/cmd/restic/cmd_self_update.go

do-install:
	${MODGO_INSTALL_TARGET}
	${INSTALL_DATA_DIR} ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/doc/man/*.1 ${PREFIX}/man/man1

.include "modules.inc"

.include <bsd.port.mk>
