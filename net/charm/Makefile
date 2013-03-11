# $OpenBSD: Makefile,v 1.17 2013/03/11 11:35:45 espie Exp $

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

USE_GROFF =	Yes
NO_TEST=	Yes

DOCSDIR=	${PREFIX}/share/doc/charm

post-configure:
	@perl -pi -e 's|%%PREFIX%%|${PREFIX}|g' \
		${WRKSRC}/charm.1 \
		${WRKSRC}/charmrc.5

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.charm ${DOCSDIR}/README
	
.include <bsd.port.mk>
