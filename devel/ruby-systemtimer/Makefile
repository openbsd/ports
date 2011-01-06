# $OpenBSD: Makefile,v 1.9 2011/01/06 04:24:23 jeremy Exp $

COMMENT=	a ruby timer based on SIGALRM

DISTNAME=	SystemTimer-1.1.1
PKGNAME=	${DISTNAME:L}
REVISION=	4
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
