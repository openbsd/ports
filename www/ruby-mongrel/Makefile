# $OpenBSD: Makefile,v 1.22 2013/05/26 09:30:55 kirby Exp $

COMMENT=	fast HTTP library and server for Ruby

DISTNAME=	mongrel-1.1.5
REVISION =	6
CATEGORIES=	www

HOMEPAGE=	http://rubyforge.org/projects/mongrel/

# Ruby License
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

FLAVORS=	ruby18
FLAVOR=		ruby18

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.3 \
		devel/ruby-gem_plugin,${MODRUBY_FLAVOR}>=0.2.3 \
		devel/ruby-fastthread,${MODRUBY_FLAVOR}>=1.0.1

CONFIGURE_STYLE=ruby gem ext

TEST_DEPENDS= ${FULLPKGNAME}:${BUILD_PKGPATH}

do-test:
	@cd ${WRKDIST} && touch Rakefile && ${RUBY} setup.rb test && \
		rm -f Rakefile

.include <bsd.port.mk>
