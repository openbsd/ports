# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:54 jeremy Exp $

COMMENT=	a ruby timer based on SIGALRM

DISTNAME=	SystemTimer-1.1.1
PKGNAME=	${DISTNAME:L}
REVISION=	2
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem ext

.include <bsd.port.mk>
