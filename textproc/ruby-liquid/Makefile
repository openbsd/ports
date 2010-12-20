# $OpenBSD: Makefile,v 1.1.1.1 2010/12/20 18:17:03 jeremy Exp $

COMMENT =	safe, customer facing template language

DISTNAME =	liquid-2.2.2
CATEGORIES =	textproc

HOMEPAGE =	http://www.liquidmarkup.org/

# MIT
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

# distfile currently doesn't include the Rakefile or specs from the source
# repository, but a future version might
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
