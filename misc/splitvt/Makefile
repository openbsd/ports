# $OpenBSD: Makefile,v 1.15 2002/10/27 21:07:54 naddy Exp $

COMMENT=	"run two shells in a split window/terminal"

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/console/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
