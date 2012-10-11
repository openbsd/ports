# $OpenBSD: Makefile,v 1.2 2012/10/11 18:13:51 jasper Exp $

COMMENT=		backend data caching and persistence daemon for Graphite

MODPY_EGG_VERSION=	0.9.10

DISTNAME=		carbon-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}
REVISION=		0
CATEGORIES=		databases

# Apache
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python

MASTER_SITES=		${MASTER_SITE_PYPI:=c/carbon/}

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		databases/py-whisper \
			devel/py-twisted/core

BIN_FILES=		carbon-aggregator.py carbon-cache.py carbon-client.py \
			carbon-relay.py validate-storage-schemas.py

.for b in ${BIN_FILES}
MODPY_ADJ_FILES+=	bin/$b
.endfor

GRAPHITE_EGDIR=		${PREFIX}/share/examples/graphite/

SUBST_VARS+=		GRAPHITE_EGDIR MODPY_SITEPKG

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/setup.{cfg,py} ${WRKSRC}/lib/carbon/conf.py \
		${WRKSRC}/bin/validate-storage-schemas.py

.include <bsd.port.mk>