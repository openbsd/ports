# $OpenBSD: Makefile,v 1.6 2014/09/20 21:07:20 jeremy Exp $

COMMENT =		module to access shadow passwords

DISTNAME =		ruby-shadow-2.3.4
REVISION =		0
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
