# $OpenBSD: Makefile,v 1.14 2013/01/14 18:42:24 jeremy Exp $

COMMENT=		HTML Abstraction Markup Language for Ruby

DISTNAME=		haml-3.1.7
CATEGORIES=		textproc

HOMEPAGE=		http://haml.hamptoncatlin.com/

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

MODRUBY_REGRESS=	rake

# Remove tests that depend on Rails
pre-regress:
	rm ${WRKSRC}/test/haml/template_test.rb \
		${WRKSRC}/test/haml/helper_test.rb

.include <bsd.port.mk>
