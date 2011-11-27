# $OpenBSD: Makefile,v 1.9 2011/11/27 11:10:35 pirofti Exp $

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
REVISION =	5
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
