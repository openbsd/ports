# $OpenBSD: Makefile,v 1.9 2015/01/21 06:13:48 bentley Exp $

PKG_ARCH=	*

COMMENT=	commandline interface to online dictionaries

DISTNAME=	edict-2.2
CATEGORIES=	education
REVISION =	0

HOMEPAGE=	http://edictionary.sourceforge.net/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=edictionary/}

NO_BUILD=	Yes
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/edict

DOCDIR=		${PREFIX}/share/doc/edict

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/edict ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -sf edict ethes 
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCDIR}

.include <bsd.port.mk>
