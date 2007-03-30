# $OpenBSD: Makefile,v 1.6 2007/03/30 23:51:10 steven Exp $

PKG_ARCH=	*

COMMENT=	"commandline interface to online dictionaries"

DISTNAME=	edict-2.2
CATEGORIES=	education

HOMEPAGE=	http://edictionary.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=edictionary/}

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/edict

DOCDIR=		${PREFIX}/share/doc/edict

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/edict ${PREFIX}/bin
	cd ${PREFIX}/bin; ln -sf edict ethes 
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/README ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/ChangeLog ${DOCDIR}

.include <bsd.port.mk>
