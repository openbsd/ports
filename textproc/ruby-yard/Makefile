# $OpenBSD: Makefile,v 1.4 2014/01/05 13:50:06 jasper Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.7.3
CATEGORIES=	textproc

HOMEPAGE=	http://yardoc.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR}
TEST_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

MODRUBY_TEST=rspec2

.include <bsd.port.mk>
