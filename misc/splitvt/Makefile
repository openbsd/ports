# $OpenBSD: Makefile,v 1.10 2001/06/27 20:56:27 pvalchev Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"run two shells in a split window/terminal"

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc
NEED_VERSION=	1.402
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	utils/console

MAINTAINER=     ports@OpenBSD.ORG

# License: NONE
PERMIT_PACKAGE_CDROM=	"no license"
PERMIT_PACKAGE_FTP=	"no license"
PERMIT_DISTFILES_CDROM=	"no license"
PERMIT_DISTFILES_FTP=	"no license"

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
