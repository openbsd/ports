# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
REVISION =	2
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
