# $OpenBSD: Makefile,v 1.1.1.1 2005/02/23 16:42:41 xsa Exp $

COMMENT=	"LiveJournal client for Python"

DISTNAME=	charm-1.5.0
CATEGORIES=	net news

HOMEPAGE=	http://ljcharm.sourceforge.net/

MAINTAINER=	Mike Pechkin <mpech@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ljcharm/}

MODULES=	lang/python

NO_REGRESS=	Yes

DOCSDIR=	${PREFIX}/share/doc/charm
EXAMPLESDIR=	${PREFIX}/share/examples/charm

post-install:
	${INSTALL_DATA_DIR} ${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/README.charm ${DOCSDIR}/README
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/sample.charmrc ${EXAMPLESDIR}

.include <bsd.port.mk>
