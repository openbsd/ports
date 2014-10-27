# $OpenBSD: Makefile,v 1.8 2014/10/27 18:26:04 jasper Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.7.6
CATEGORIES=	textproc

HOMEPAGE=	http://yardoc.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR}
TEST_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

#MODRUBY_TEST=rspec2

.include <bsd.port.mk>
