# $OpenBSD: Makefile,v 1.6 2000/06/26 19:52:51 brad Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

DISTNAME=	abook-0.4.8
CATEGORIES=	mail
NEED_VERSION=	1.308
MASTER_SITES=	http://members.linuxstart.com/~jheinonen/abook/

HOMEPAGE=	http://members.linuxstart.com/~jheinonen/abook/

MAINTAINER=	reinhard@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= gnu

post-install:
	@strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
