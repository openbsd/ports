# $OpenBSD: Makefile,v 1.13 2002/03/21 21:09:19 espie Exp $
# Original from: Ejovi Nuwere <ejovi@ejovi.net>

COMMENT=	"run two shells in a split window/terminal"

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR=	utils/console

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
