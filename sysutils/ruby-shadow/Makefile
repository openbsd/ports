# $OpenBSD: Makefile,v 1.17 2019/07/12 20:49:51 sthen Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.5.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		3
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# PD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
