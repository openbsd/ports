COMMENT=	fast, pure Ruby Markdown parser

DISTNAME=	kramdown-2.3.1

CATEGORIES=	textproc

HOMEPAGE=	https://kramdown.gettalong.org/

# MIT
PERMIT_PACKAGE=	Yes

# After Ruby 3.0 is added to ports tree
#RUN_DEPENDS=	textproc/ruby-rexml

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_TEST=	ruby
MODRUBY_TEST_TARGET =	${WRKSRC}/test/run_tests.rb

.include <bsd.port.mk>
