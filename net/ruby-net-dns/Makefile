# $OpenBSD: Makefile,v 1.11 2016/01/01 12:35:25 jasper Exp $

COMMENT =	Ruby implementation of Net::DNS

DISTNAME =	net-dns-0.8.0
CATEGORIES =	net

# Ruby's license
PERMIT_PACKAGE_CDROM=	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS =	textproc/ruby-yard,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
