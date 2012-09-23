# $OpenBSD: Makefile,v 1.10 2012/09/23 17:00:49 jeremy Exp $

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
REVISION =	6
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

FLAVORS =	ruby18
FLAVOR =	ruby18

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
