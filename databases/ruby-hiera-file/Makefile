# $OpenBSD: Makefile,v 1.2 2013/12/22 13:39:06 jasper Exp $

COMMENT =	data backend for Hiera to return whole files

DISTNAME =	hiera-file-1.1.0
REVISION =	0
CATEGORIES =	databases

MAINTAINER =	Jasper Lievises Adriaanse <jasper@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
