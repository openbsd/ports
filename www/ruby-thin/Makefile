# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:05 sthen Exp $

COMMENT =	fast and very simple Ruby web server

DISTNAME =	thin-1.7.2
REVISION =	0
CATEGORIES =	www

HOMEPAGE =	http://code.macournoyer.com/thin/

# Ruby/GPLv2
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem ext

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-rack,${MODRUBY_FLAVOR}>=1.0,<3.0 \
		devel/ruby-daemons,${MODRUBY_FLAVOR}>=1.0.9,<2.0 \
		net/ruby-eventmachine,${MODRUBY_FLAVOR}>=1.0.4,<2.0

.include <bsd.port.mk>
