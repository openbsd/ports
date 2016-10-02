# $OpenBSD: Makefile,v 1.8 2016/10/02 10:15:22 jasper Exp $

COMMENT =	data backend for Hiera to return whole files

DISTNAME =	hiera-file-1.1.1
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
