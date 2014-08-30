# $OpenBSD: Makefile,v 1.3 2014/08/30 22:11:33 jasper Exp $

COMMENT =	data backend for Hiera to return whole files

DISTNAME =	hiera-file-1.1.0
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
