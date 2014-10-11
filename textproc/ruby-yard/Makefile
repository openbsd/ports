# $OpenBSD: Makefile,v 1.6 2014/10/11 19:54:47 jeremy Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.7.4
REVISION =	0
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
