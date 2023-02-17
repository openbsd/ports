# has deps that can build only on OpenBSD/amd64
ONLY_FOR_ARCHS = amd64

COMMENT =	ActivityPub social network server

MODGO_MODNAME =	github.com/superseriousbusiness/gotosocial
MODGO_VERSION =	v0.7.0

DISTNAME =	gotosocial-${MODGO_VERSION}

CATEGORIES =	www

HOMEPAGE =	https://docs.gotosocial.org

MAINTAINER =	Hukadan <me@hukadan.org>

# fetch the web assets built for the release
DISTFILES +=	gotosocial_${MODGO_VERSION:S/v//}_web-assets.tar.gz:0
MASTER_SITES0 =	https://github.com/superseriousbusiness/gotosocial/releases/download/${MODGO_VERSION}/

# AGPL-3.0+
PERMIT_PACKAGE =	yes

WANTLIB += c pthread

MODULES =	lang/go

WRKDIST =	${WRKSRC}

MODGO_LDFLAGS += -X 'main.Version=${MODGO_VERSION:S/v//}'

TEST_ENV +=	GTS_DB_ADDRESS=":memory:" \
		GTS_DB_TYPE="sqlite"

PREFIX =	${VARBASE}
INSTDIR =	${PREFIX}/gotosocial

post-extract:
	tar -C ${WRKDIR} -xzf \
		${FULLDISTDIR}/gotosocial_${MODGO_VERSION:S/v//}_web-assets.tar.gz

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
	cp -R ${WRKDIR}/web ${INSTDIR}

.include "modules.inc"

.include <bsd.port.mk>
