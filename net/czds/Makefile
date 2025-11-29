COMMENT =	client to the CZDS REST API

MODGO_MODNAME =	github.com/lanrat/czds
MODGO_VERSION =	v1.3.2

DISTNAME =	czds-${MODGO_VERSION}

CATEGORIES =	net

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB +=	c pthread

MODULES =	lang/go
MODGO_TYPE =	bin

MODGO_MODULES =	\
	golang.org/x/sync	 v0.16.0

post-build:
	mv ${MODGO_WORKSPACE}/bin/cmd ${MODGO_WORKSPACE}/bin/czds

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/czds
	${INSTALL_DATA} ${WRKSRC}/README.md ${PREFIX}/share/doc/czds

.include <bsd.port.mk>
