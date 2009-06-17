# $OpenBSD: Makefile,v 1.3 2009/06/17 01:27:10 sthen Exp $

COMMENT=	a ruby timer based on SIGALRM

DISTNAME=	SystemTimer-1.1.1
PKGNAME=	ruby-${DISTNAME:L}p0
CATEGORIES=	devel

# ruby or gpl
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=systemtimer/}

MODULES=	lang/ruby

WANTLIB=	c m
LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
