# $OpenBSD: Makefile,v 1.8 2013/03/11 11:06:03 espie Exp $

PKG_ARCH=	*

COMMENT=	commandline interface to online dictionaries

DISTNAME=	edict-2.2
CATEGORIES=	education

HOMEPAGE=	http://edictionary.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
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
