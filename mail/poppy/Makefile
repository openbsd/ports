# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:22 sthen Exp $

COMMENT=	client to perform simple tasks with a POP3/IMAP server

DISTNAME=	poppy-4.01
CATEGORIES=	mail
REVISION =	0

HOMEPAGE=	http://www.cnpbagwell.com/projects.html

PERMIT_PACKAGE=	Yes

MASTER_SITES=	http://www.cnpbagwell.com/

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/poppy ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/spamkill ${PREFIX}/bin
	${INSTALL_MAN}	${WRKSRC}/poppy.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
