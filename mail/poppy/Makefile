# $OpenBSD: Makefile,v 1.3 2002/10/27 17:21:39 naddy Exp $

COMMENT=	"client to perform simple tasks with a POP3/IMAP server"

DISTNAME=	poppy-3.1
CATEGORIES=	mail

HOMEPAGE=	http://home.sprynet.com/~cbagwell/projects.html

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://home.sprynet.com/~cbagwell/

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/poppy ${PREFIX}/bin
	${INSTALL_MAN}	${WRKSRC}/poppy.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
