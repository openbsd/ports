# $OpenBSD: Makefile,v 1.7 2013/03/11 11:42:46 espie Exp $

COMMENT =	safe, customer facing template language

DISTNAME =	liquid-2.4.1
CATEGORIES =	textproc

HOMEPAGE =	http://www.liquidmarkup.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# distfile currently doesn't include the Rakefile or specs from the source
# repository, but a future version might
#MODRUBY_TEST =	rake

.include <bsd.port.mk>
