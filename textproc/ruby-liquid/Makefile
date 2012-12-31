# $OpenBSD: Makefile,v 1.5 2012/12/31 15:48:10 naddy Exp $

COMMENT =	safe, customer facing template language

DISTNAME =	liquid-2.2.2
CATEGORIES =	textproc

REVISION =	3

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
