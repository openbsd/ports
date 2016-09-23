# $OpenBSD: Makefile,v 1.5 2016/09/23 15:25:58 jeremy Exp $

COMMENT =	integration testing tool for rack based web applications

DISTNAME =	capybara-2.7.1
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/capybara

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16 \
		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.3.3 \
		www/ruby-addressable,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.5.4 \
		www/ruby-xpath,${MODRUBY_FLAVOR}>=2.0,<3

.include <bsd.port.mk>
