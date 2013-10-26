# $OpenBSD: Makefile,v 1.16 2013/10/26 23:55:37 jeremy Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-3.1.7
REVISION =		0
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_TEST=	rake

# Remove tests that depend on Rails
pre-test:
	rm ${WRKSRC}/test/haml/template_test.rb \
		${WRKSRC}/test/haml/helper_test.rb

.include <bsd.port.mk>
