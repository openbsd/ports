COMMENT =	client to the CZDS REST API

GH_ACCOUNT =	lanrat
GH_PROJECT =	czds
GH_TAGNAME =	v1.2.14

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go

do-build:
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/czds-dl
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/czds-request
	${MODGO_BUILD_CMD} ${ALL_TARGET}/cmd/czds-status

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/czds
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/czds

.include <bsd.port.mk>
