# $OpenBSD: Makefile,v 1.10 2011/03/14 08:44:38 sthen Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.1.4
PKGNAME =	${DISTNAME:L}
REVISION =	4
CATEGORIES =	devel

MAINTAINER =	Paul Irofti <pirofti@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-hoe,${MODRUBY_FLAVOR}
REGRESS_DEPENDS =	devel/ruby-minitest,${MODRUBY_FLAVOR}

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
