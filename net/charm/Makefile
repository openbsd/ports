# $OpenBSD: Makefile,v 1.21 2019/07/12 21:02:23 sthen Exp $

COMMENT=	LiveJournal client for Python

MODPY_EGG_VERSION=1.9.2
DISTNAME=	charm-${MODPY_EGG_VERSION}
CATEGORIES=	net news

HOMEPAGE=	http://ljcharm.sourceforge.net/

# GPL
PERMIT_PACKAGE=	Yes

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
