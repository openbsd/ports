# $OpenBSD: Makefile,v 1.19 2015/09/18 19:24:09 jasper Exp $

COMMENT=	LiveJournal client for Python

DISTNAME=	charm-1.7.0
REVISION=	7
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
