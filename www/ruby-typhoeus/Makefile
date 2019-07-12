# $OpenBSD: Makefile,v 1.2 2019/07/12 20:51:05 sthen Exp $

COMMENT =		parallel HTTP requests

DISTNAME =		typhoeus-1.3.1


CATEGORIES =		www

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-ethon,${MODRUBY_FLAVOR}

# tests would need additional ports

.include <bsd.port.mk>
