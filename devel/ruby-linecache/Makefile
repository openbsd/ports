# $OpenBSD: Makefile,v 1.4 2010/09/28 20:12:17 jeremy Exp $

SHARED_ONLY =	Yes

COMMENT =	caches (Ruby source) files

DISTNAME =	linecache-0.43
PKGNAME =	ruby-${DISTNAME}
REVISION =	1
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

WANTLIB =	c m
LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
