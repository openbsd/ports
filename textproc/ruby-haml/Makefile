# $OpenBSD: Makefile,v 1.15 2013/03/11 11:42:46 espie Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-3.1.7
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
