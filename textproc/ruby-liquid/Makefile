# $OpenBSD: Makefile,v 1.9 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	safe, customer facing template language

DISTNAME =	liquid-2.4.1
REVISION = 	1
CATEGORIES =	textproc

HOMEPAGE =	 http://wiki.shopify.com/Liquid

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# distfile currently doesn't include the Rakefile or specs from the source
# repository, but a future version might
#MODRUBY_TEST =	rake

.include <bsd.port.mk>
