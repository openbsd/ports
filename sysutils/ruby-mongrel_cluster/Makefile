# $OpenBSD: Makefile,v 1.8 2010/11/20 17:22:42 espie Exp $

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
RUN_DEPENDS=	devel/ruby-gem_plugin,${FLAVOR}>=0.2.3 \
		www/ruby-mongrel,${FLAVOR}>=1.0.2

.include <bsd.port.mk>
