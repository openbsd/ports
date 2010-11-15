# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:08 espie Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-1.4.2
REVISION =      1
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

REGRESS_DEPENDS = devel/ruby-hoe,${FLAVOR}

.include <bsd.port.mk>
