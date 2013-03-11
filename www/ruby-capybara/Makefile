# $OpenBSD: Makefile,v 1.2 2013/03/11 11:44:49 espie Exp $

COMMENT =	integration testing tool for rack based web applications

DISTNAME =	capybara-1.1.2
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/capybara

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	mail/ruby-mime-types,${MODRUBY_FLAVOR}>=1.16 \
		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.3.3 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.5.4 \
		www/ruby-xpath,${MODRUBY_FLAVOR}>=0.1.4,<2.0

.include <bsd.port.mk>
