# $OpenBSD: Makefile,v 1.1.1.1 2003/06/20 06:05:41 kevlo Exp $

COMMENT=	"commandline interface to online dictionaries"

DISTNAME=	edict-1.0
CATEGORIES=	education

HOMEPAGE=	http://edictionary.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=edictionary/}

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/edict

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/edict
	${INSTALL_SCRIPT} ${WRKSRC}/edict ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/ethes ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/edict

.include <bsd.port.mk>
