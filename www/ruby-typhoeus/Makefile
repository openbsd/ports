# $OpenBSD: Makefile,v 1.1.1.1 2019/04/23 11:18:09 sebastia Exp $

COMMENT =		parallel HTTP requests

DISTNAME =		typhoeus-1.3.1


CATEGORIES =		www

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-ethon,${MODRUBY_FLAVOR}

# tests would need additional ports

.include <bsd.port.mk>
