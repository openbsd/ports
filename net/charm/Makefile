# $OpenBSD: Makefile,v 1.20 2015/12/30 16:50:38 jasper Exp $

COMMENT=	LiveJournal client for Python

MODPY_EGG_VERSION=1.9.2
DISTNAME=	charm-${MODPY_EGG_VERSION}
CATEGORIES=	net news

HOMEPAGE=	http://ljcharm.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ljcharm/}

MODULES=	lang/python
RUN_DEPENDS=	textproc/py-feedparser

NO_TEST=	Yes

DOCSDIR=	${PREFIX}/share/doc/charm

post-configure:
	${SUBST_CMD} ${WRKSRC}/charm.1 ${WRKSRC}/charmrc.5

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.charm ${DOCSDIR}/README

.include <bsd.port.mk>
