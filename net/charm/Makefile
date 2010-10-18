# $OpenBSD: Makefile,v 1.13 2010/10/18 18:36:46 espie Exp $

COMMENT=	LiveJournal client for Python

DISTNAME=	charm-1.7.0
REVISION=	5
CATEGORIES=	net news

HOMEPAGE=	http://ljcharm.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ljcharm/}

MODULES=	lang/python
RUN_DEPENDS=	:py-feedparser-*:textproc/py-feedparser

USE_GROFF =	Yes
NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/charm

post-configure:
	@perl -pi -e 's|%%PREFIX%%|${PREFIX}|g' \
		${WRKSRC}/charm.1 \
		${WRKSRC}/charmrc.5

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.charm ${DOCSDIR}/README
	
.include <bsd.port.mk>
