# $OpenBSD: Makefile,v 1.10 2015/10/09 07:06:35 jasper Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.5.0
PKGNAME =		${DISTNAME:S/ruby-//}
CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# PD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS = 	sysutils/e2fsprogs

WANTLIB =		pthread

CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
