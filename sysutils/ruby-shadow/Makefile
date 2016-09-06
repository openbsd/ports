# $OpenBSD: Makefile,v 1.13 2016/09/06 09:04:48 jasper Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.5.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		0
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
