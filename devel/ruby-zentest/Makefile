# $OpenBSD: Makefile,v 1.6 2010/11/08 23:28:54 jeremy Exp $

COMMENT =	ensures test coverage and accelerates TDD

DISTNAME =	ZenTest-4.1.4
PKGNAME =	${DISTNAME:L}
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

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-hoe-*:devel/ruby-hoe,${FLAVOR}
REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-minitest-*:devel/ruby-minitest,${FLAVOR}

MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
