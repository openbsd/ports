# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:18:12 jeremy Exp $

COMMENT =	Ruby markdown interpreter

DISTNAME =	maruku-0.6.0
CATEGORIES =	textproc

HOMEPAGE =	http://maruku.rubyforge.org/

# GPLv2+
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		textproc/ruby-syntax,${MODRUBY_FLAVOR} \
			${MODRUBY_ICONV_DEPENDS}

CONFIGURE_STYLE =	ruby gem

# Regress tests broken, uses Gem.manage_gems which
# was removed before ruby-gems 1.3.7
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
