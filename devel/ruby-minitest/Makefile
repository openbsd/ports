# $OpenBSD: Makefile,v 1.9 2011/03/25 16:45:20 jeremy Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-2.0.2
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_REGRESS = rake

REGRESS_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
