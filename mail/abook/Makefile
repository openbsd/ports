# $OpenBSD: Makefile,v 1.2 2000/05/29 17:15:37 reinhard Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

DISTNAME=		abook-0.4.7
CATEGORIES=     	mail
NEED_VERSION=		1.283

HOMEPAGE=		http://www.linuxstart.com/%7Ejheinonen/abook/

MAINTAINER=		reinhard@openbsd.org

FAKE=			Yes

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}
DISTFILES=		abook-0.4.7

USE_AUTOCONF=		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/abook ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/abook.1 ${PREFIX}/man/man1

post-install:
	strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
