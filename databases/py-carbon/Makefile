# $OpenBSD: Makefile,v 1.13 2021/11/20 14:53:17 sthen Exp $

COMMENT=		backend data caching and persistence daemon for Graphite

MODPY_EGG_VERSION=	1.1.8

DISTNAME=		carbon-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE=		Yes

MODULES=		lang/python
MODPY_PI=		Yes

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/py-whisper${MODPY_FLAVOR} \
			devel/py-twisted${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR=			python3

BIN_FILES=		carbon-aggregator.py carbon-cache.py carbon-client.py \
			carbon-relay.py validate-storage-schemas.py \
			carbon-aggregator-cache.py

.for b in ${BIN_FILES}
MODPY_ADJ_FILES+=	bin/$b
.endfor

GRAPHITE_EGDIR=		${PREFIX}/share/examples/graphite/

SUBST_VARS+=		GRAPHITE_EGDIR MODPY_SITEPKG

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.{cfg,py} ${WRKSRC}/lib/carbon/conf.py \
		${WRKSRC}/bin/validate-storage-schemas.py
	rm ${WRKSRC}/{bin/validate-storage-schemas,lib/carbon/conf}.py{${PATCHORIG},.beforesubst}

.include <bsd.port.mk>
