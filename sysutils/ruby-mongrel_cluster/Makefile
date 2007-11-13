# $OpenBSD: Makefile,v 1.1.1.1 2007/11/13 18:41:18 bernd Exp $

COMMENT=	tool to help start/stop/restart multiple mongrel servers

DISTNAME=	mongrel_cluster-1.0.4
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	sysutils

HOMEPAGE=	http://mongrel.rubyforge.org/docs/mongrel_cluster.html

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
