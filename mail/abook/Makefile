# $OpenBSD: Makefile,v 1.8 2000/09/29 03:00:58 kevlo Exp $
# Original from: Jaakko Heinonen <jheinonen@bigfoot.com>

DISTNAME=	abook-0.4.10
CATEGORIES=	mail
NEED_VERSION=	1.337
MASTER_SITES=	http://members.linuxstart.com/~jheinonen/abook/

HOMEPAGE=	http://members.linuxstart.com/~jheinonen/abook/

MAINTAINER=	Reinhard J. Sammer <reinhard@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

CONFIGURE_STYLE= gnu

post-install:
	@strip ${PREFIX}/bin/abook

.include <bsd.port.mk>
