# $OpenBSD: Makefile,v 1.15 2010/11/08 23:28:56 jeremy Exp $

COMMENT=	fast HTTP library and server for Ruby

DISTNAME=	mongrel-1.1.5
REVISION=	1
CATEGORIES=	www

MAINTAINER=	Jason LaRiviere <jason@indelicate.net>

HOMEPAGE=	http://mongrel.rubyforge.org/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:${MODRUBY_PKG_PREFIX}-daemons->=1.0.3:devel/ruby-daemons,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-gem_plugin->=0.2.3:devel/ruby-gem_plugin,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-fastthread->=1.0.1:devel/ruby-fastthread,${FLAVOR}

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS=:${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	@cd ${WRKDIST} && touch Rakefile && ${RUBY} setup.rb test && \
		rm -f Rakefile

.include <bsd.port.mk>
