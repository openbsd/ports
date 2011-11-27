# $OpenBSD: Makefile,v 1.12 2011/11/27 11:11:12 pirofti Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-2.2.2
REVISION =	1
CATEGORIES =	devel

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
