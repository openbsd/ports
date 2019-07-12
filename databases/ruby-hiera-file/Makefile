# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:01 sthen Exp $

COMMENT =	data backend for Hiera to return whole files

DISTNAME =	hiera-file-1.1.1
REVISION =	1
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera3,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
