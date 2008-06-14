# $OpenBSD: Makefile,v 1.4 2008/06/14 23:55:46 landry Exp $

COMMENT=	tool to help start/stop/restart multiple mongrel servers

DISTNAME=	mongrel_cluster-1.0.5
PKGNAME=	ruby-${DISTNAME}p1
CATEGORIES=	sysutils

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mongrel/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-gem_plugin->=0.2.3:devel/ruby-gem_plugin \
		:ruby-mongrel->=1.0.2:www/ruby-mongrel

PKG_ARCH=	*

.include <bsd.port.mk>
