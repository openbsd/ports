# $OpenBSD: Makefile,v 1.4 2007/09/20 12:51:52 msf Exp $

SHARED_ONLY=	Yes

COMMENT=	fast HTTP library and server for Ruby

DISTNAME=	mongrel-0.3.13.4
PKGNAME=	ruby-${DISTNAME}p0
CATEGORIES=	www

MAINTAINER=	Jason LaRiviere <jason@indelicate.net>

HOMEPAGE=	http://mongrel.rubyforge.org/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=mongrel/}

WANTLIB=	c m

MODULES=	lang/ruby

LIB_DEPENDS=	ruby.>=1::lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-daemons->=0.4.2:devel/ruby-daemons \
		:ruby-gem_plugin->=0.2.1:devel/ruby-gem_plugin

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
