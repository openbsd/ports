# $OpenBSD: Makefile,v 1.18 2004/10/08 20:47:22 sturm Exp $

COMMENT=	"convert English text to Jive"

DISTNAME=	jive-1.1
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_BACKUP}

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

WRKDIST=	${WRKDIR}/jive

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jive.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
