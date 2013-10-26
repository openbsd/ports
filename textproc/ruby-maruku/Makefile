# $OpenBSD: Makefile,v 1.6 2013/10/26 23:55:37 jeremy Exp $

COMMENT =	Ruby markdown interpreter

DISTNAME =	maruku-0.6.1
REVISION =	0
CATEGORIES =	textproc

HOMEPAGE =	http://maruku.rubyforge.org/

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-syntax,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS}

CONFIGURE_STYLE =	ruby gem

# Regress tests broken, uses Gem.manage_gems which
# was removed before ruby-gems 1.3.7
MODRUBY_TEST =	rake

.include <bsd.port.mk>
