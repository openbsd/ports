# $OpenBSD: Makefile,v 1.4 2022/01/06 21:34:54 sebastia Exp $

COMMENT =		parallel HTTP requests

DISTNAME =		typhoeus-1.4.0

CATEGORIES =		www
HOMEPAGE =		https://github.com/typhoeus/typhoeus
MAINTAINER =		Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-ethon,${MODRUBY_FLAVOR}

# tests would need additional ports

.include <bsd.port.mk>
