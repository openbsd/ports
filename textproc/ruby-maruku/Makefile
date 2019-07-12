# $OpenBSD: Makefile,v 1.10 2019/07/12 21:02:27 sthen Exp $

COMMENT =	Ruby markdown interpreter

DISTNAME =	maruku-0.6.1
REVISION =	3
CATEGORIES =	textproc

HOMEPAGE =	https://github.com/bhollis/maruku

# GPLv2+
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-syntax,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

# Regress tests broken, uses Gem.manage_gems which
# was removed before ruby-gems 1.3.7
MODRUBY_TEST =	rake

.include <bsd.port.mk>
