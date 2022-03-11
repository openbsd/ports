COMMENT =	integration testing tool for rack based web applications

DISTNAME =	capybara-3.33.0
CATEGORIES =	www

HOMEPAGE=	https://github.com/jnicklas/capybara

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-regexp_parser,${MODRUBY_FLAVOR}>=1.5,<2 \
		mail/ruby-mini_mime,${MODRUBY_FLAVOR}>=0.1.3 \
		textproc/ruby-nokogiri,${MODRUBY_FLAVOR}>=1.8,<2 \
		www/ruby-addressable,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.6.0 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.6.3 \
		www/ruby-xpath,${MODRUBY_FLAVOR}>=3.2,<4

# Tests require dependencies not in ports

.include <bsd.port.mk>
