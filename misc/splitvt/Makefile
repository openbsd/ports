# $OpenBSD: Makefile,v 1.16 2004/12/22 11:50:29 alek Exp $

COMMENT=	"run two shells in a split window/terminal"

DISTNAME=	splitvt-1.6.3
CATEGORIES=	misc

MASTER_SITES=	${MASTER_SITE_SUNSITE:=utils/console/}

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c termcap

CONFIGURE_STYLE=	simple
CONFIGURE_SCRIPT=	Configure
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
