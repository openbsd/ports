# $OpenBSD: Makefile,v 1.7 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	tool to help start/stop/restart multiple mongrel servers

DISTNAME=	mongrel_cluster-1.0.5
REVISION=	3
CATEGORIES=	sysutils

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-gem_plugin->=0.2.3:devel/ruby-gem_plugin,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-mongrel->=1.0.2:www/ruby-mongrel,${FLAVOR}

.include <bsd.port.mk>
