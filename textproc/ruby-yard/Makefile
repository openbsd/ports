# $OpenBSD: Makefile,v 1.9 2019/07/12 20:50:15 sthen Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.7.6
CATEGORIES=	textproc

HOMEPAGE=	http://yardoc.org/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR}
TEST_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

#MODRUBY_TEST=rspec2

.include <bsd.port.mk>
