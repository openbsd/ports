# $OpenBSD: Makefile,v 1.2 2013/03/11 11:42:47 espie Exp $

COMMENT=	Ruby documentation tool

DISTNAME=	yard-0.8.3
CATEGORIES=	textproc

HOMEPAGE=	http://yardoc.org/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

RUN_DEPENDS=	textproc/ruby-redcarpet,${MODRUBY_FLAVOR}
TEST_DEPENDS=textproc/ruby-redcarpet,${MODRUBY_FLAVOR} \
		www/ruby-rack,${MODRUBY_FLAVOR}

MODRUBY_TEST=rspec

.include <bsd.port.mk>
