COMMENT =	modern IRC server written in Go

DIST_TUPLE +=	github ergochat ergo v2.15.0 .
CATEGORIES =	net

HOMEPAGE =	https://ergo.chat/
MAINTAINER =	Lydia Sobot <chilledfrogs@disroot.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c pthread

MODULES =	lang/go

ALL_TARGET =	github.com/ergochat/ergo

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/ergo ${PREFIX}/sbin/ergo
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ergo/i18n
	${INSTALL_DATA} ${WRKSRC}/languages/example/* \
		${PREFIX}/share/examples/ergo/i18n/
	${INSTALL_DATA} ${WRKSRC}/default.yaml ${PREFIX}/share/examples/ergo/ircd.yaml
	${INSTALL_DATA} ${WRKSRC}/ergo.motd ${PREFIX}/share/examples/ergo/ircd.motd
	${INSTALL_DATA_DIR} ${PREFIX}/share/ergo/i18n
	${INSTALL_DATA} ${WRKSRC}/languages/*.{yaml,json,md} ${PREFIX}/share/ergo/i18n/


.include <bsd.port.mk>
