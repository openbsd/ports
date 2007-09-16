# $OpenBSD: Makefile,v 1.5 2007/09/16 00:17:06 merdely Exp $

COMMENT=	client to perform simple tasks with a POP3/IMAP server

DISTNAME=	poppy-4.01
CATEGORIES=	mail

HOMEPAGE=	http://www.cnpbagwell.com/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://www.cnpbagwell.com/

CONFIGURE_STYLE= perl

post-install:
	${INSTALL_SCRIPT} ${WRKSRC}/poppy ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/spamkill ${PREFIX}/bin
	${INSTALL_MAN}	${WRKSRC}/poppy.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
