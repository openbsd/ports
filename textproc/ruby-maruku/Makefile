# $OpenBSD: Makefile,v 1.8 2015/07/18 21:07:40 jeremy Exp $

COMMENT =	Ruby markdown interpreter

DISTNAME =	maruku-0.6.1
REVISION =	2
CATEGORIES =	textproc

HOMEPAGE =	http://maruku.rubyforge.org/

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
