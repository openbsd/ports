# $OpenBSD: Makefile,v 1.3 2000/05/30 11:37:40 reinhard Exp $
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

USE_AUTOCONF=		Yes
CONFIGURE_ARGS=		--prefix=${PREFIX} 

post-install:
	strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
