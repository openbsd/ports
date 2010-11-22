# $OpenBSD: Makefile,v 1.16 2010/11/22 08:36:54 espie Exp $

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
RUN_DEPENDS=	devel/ruby-daemons,${FLAVOR}>=1.0.3 \
		devel/ruby-gem_plugin,${FLAVOR}>=0.2.3 \
		devel/ruby-fastthread,${FLAVOR}>=1.0.1

CONFIGURE_STYLE=ruby gem ext

REGRESS_DEPENDS= ${FULLPKGNAME}:${BUILD_PKGPATH}

do-regress:
	@cd ${WRKDIST} && touch Rakefile && ${RUBY} setup.rb test && \
		rm -f Rakefile

.include <bsd.port.mk>
