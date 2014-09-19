# $OpenBSD: Makefile,v 1.12 2014/09/19 20:47:21 jeremy Exp $

COMMENT =	color value conversion and modification

DISTNAME =	color-1.4.2
CATEGORIES =	graphics

HOMEPAGE =	https://github.com/halostatue/color

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# Tests require minitest 5, not in ports
#MODRUBY_TEST =		testrb
#MODRUBY_TEST_TARGET =	-I lib test/test_*.rb

.include <bsd.port.mk>
