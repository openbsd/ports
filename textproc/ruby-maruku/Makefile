# $OpenBSD: Makefile,v 1.9 2017/11/20 20:57:17 jeremy Exp $

COMMENT =	Ruby markdown interpreter

DISTNAME =	maruku-0.6.1
REVISION =	3
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/bhollis/maruku

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-syntax,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

# Regress tests broken, uses Gem.manage_gems which
# was removed before ruby-gems 1.3.7
MODRUBY_TEST =	rake

.include <bsd.port.mk>
