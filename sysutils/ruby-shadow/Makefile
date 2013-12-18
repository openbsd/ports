# $OpenBSD: Makefile,v 1.2 2013/12/18 22:10:09 jasper Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.3.2
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
