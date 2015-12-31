# $OpenBSD: Makefile,v 1.22 2015/12/31 14:10:11 jasper Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.6.4
CATEGORIES =	www

HOMEPAGE =	http://code.macournoyer.com/thin/

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR}>=1.0,<2.0 \
		devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.9,<2.0 \
		net/ruby-eventmachine,${MODRUBY_FLAVOR}>=1.0,<2.0

# thin.gemspec not bundled
#MODRUBY_TEST =	rake

.include <bsd.port.mk>
