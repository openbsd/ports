# $OpenBSD: Makefile,v 1.7 2010/11/24 21:35:14 jeremy Exp $

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
REVISION =	3
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
