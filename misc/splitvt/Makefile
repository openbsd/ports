# $OpenBSD: Makefile,v 1.19 2007/09/16 20:58:19 jasper Exp $

COMMENT=	run two shells in a split window/terminal

DISTNAME=	splitvt-1.6.6
CATEGORIES=	misc

HOMEPAGE=	http://www.devolution.com/~slouken/projects/splitvt/
MASTER_SITES=	${HOMEPAGE}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	c termcap

CONFIGURE_STYLE=simple
ALL_TARGET=

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/splitvt ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/splitvt.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
