# has deps that can build only on OpenBSD/amd64
ONLY_FOR_ARCHS = amd64

COMMENT =	ActivityPub social network server

MODGO_MODNAME =	github.com/superseriousbusiness/gotosocial
MODGO_VERSION =	v0.3.3

DISTNAME =	gotosocial-${MODGO_VERSION}

CATEGORIES =	www

HOMEPAGE =	https://docs.gotosocial.org

MAINTAINER =	Hukadan <me@hukadan.org>

# AGPL-3.0
PERMIT_PACKAGE =	yes

WANTLIB += 	c pthread

MODULES =	lang/go

WRKDIST =	${WRKSRC}

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/gotosocial

post-patch:
	${SUBST_CMD} ${WRKSRC}/example/config.yaml

pre-build:
	 rm -rf ${WRKSRC}/vendor

do-install:
	${INSTALL_PROGRAM} ${MODGO_WORKSPACE}/bin/gotosocial \
		${WRKINST}/${LOCALBASE}/bin
	${INSTALL_DATA_DIR} ${WRKINST}/${LOCALBASE}/share/examples/gotosocial
	${INSTALL_DATA} ${WRKSRC}/example/config.yaml \
		${WRKINST}/${LOCALBASE}/share/examples/gotosocial/gotosocial.yaml
	${INSTALL_DATA_DIR} ${INSTDIR}
	${INSTALL_DATA_DIR} ${INSTDIR}/storage
	cp -R ${WRKSRC}/web ${INSTDIR}

.include "modules.inc"

.include <bsd.port.mk>
