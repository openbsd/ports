# $OpenBSD: Makefile,v 1.7 2018/08/09 22:44:51 jeremy Exp $

COMMENT =	integration testing tool for rack based web applications

DISTNAME =	capybara-3.4.2
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/capybara

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/ruby-mini_mime,${MODRUBY_FLAVOR}>=0.1.3 \
		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.8,<2 \
		www/ruby-addressable,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.6.0 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.6.3 \
		www/ruby-xpath,${MODRUBY_FLAVOR}>=3.1,<4

# Tests require dependencies not in ports

.include <bsd.port.mk>
