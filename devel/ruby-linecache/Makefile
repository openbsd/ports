# $OpenBSD: Makefile,v 1.3 2010/09/23 22:30:26 jeremy Exp $

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

MASTER_SITES =	${MASTER_SITE_RUBYFORGE:=rocky-hacks/}

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

WANTLIB =	c m
LIB_DEPENDS =	${MODRUBY_LIB_DEPENDS}

MODRUBY_REGRESS = rake

.include <bsd.port.mk>
