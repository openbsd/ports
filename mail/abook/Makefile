# $OpenBSD: Makefile,v 1.5 2000/06/22 13:19:27 reinhard Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

DISTNAME=		abook-0.4.8
CATEGORIES=     	mail
NEED_VERSION=		1.308

HOMEPAGE=		http://members.linuxstart.com/%7Ejheinonen/abook/

MAINTAINER=		reinhard@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}

CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		--prefix=${PREFIX} 

post-install:
	strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
