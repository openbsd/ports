# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:27 sthen Exp $

COMMENT =	safe, customer facing template language

DISTNAME =	liquid-2.4.1
REVISION = 	1
CATEGORIES =	textproc

HOMEPAGE =	 http://wiki.shopify.com/Liquid

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# distfile currently doesn't include the Rakefile or specs from the source
# repository, but a future version might
#MODRUBY_TEST =	rake

.include <bsd.port.mk>
