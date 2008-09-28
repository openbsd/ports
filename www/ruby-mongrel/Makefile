# $OpenBSD: Makefile,v 1.11 2008/09/28 15:52:15 bernd Exp $

SHARED_ONLY=	Yes

COMMENT=	fast HTTP library and server for Ruby

DISTNAME=	mongrel-1.1.5
PKGNAME=	ruby-${DISTNAME}
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

LIB_DEPENDS=	${MODRUBY_LIB_DEPENDS}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:ruby-daemons->=1.0.3:devel/ruby-daemons \
		:ruby-gem_plugin->=0.2.3:devel/ruby-gem_plugin \
		:ruby-fastthread->=1.0.1:devel/ruby-fastthread

GEM_SKIPDEPENDS=cgi_multipart_eof_fix

CONFIGURE_STYLE=ruby gem

REGRESS_DEPENDS=:${PKGNAME}:www/ruby-mongrel

do-regress:
	@cd ${WRKDIST} && touch Rakefile && ${RUBY} setup.rb test && \
		rm -f Rakefile

.include <bsd.port.mk>
