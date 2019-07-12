# $OpenBSD: Makefile,v 1.18 2019/07/12 20:50:14 sthen Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-3.1.7
REVISION =		1
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=	rake

# Remove tests that depend on Rails
pre-test:
	rm ${WRKSRC}/test/haml/template_test.rb \
		${WRKSRC}/test/haml/helper_test.rb

.include <bsd.port.mk>
