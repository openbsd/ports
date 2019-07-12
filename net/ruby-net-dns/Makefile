# $OpenBSD: Makefile,v 1.12 2019/07/12 20:48:48 sthen Exp $

COMMENT =	Ruby implementation of Net::DNS

DISTNAME =	net-dns-0.8.0
CATEGORIES =	net

# Ruby's license
PERMIT_PACKAGE=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS =	textproc/ruby-yard,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
