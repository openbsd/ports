# $OpenBSD: Makefile,v 1.17 2020/11/11 01:36:01 jeremy Exp $

COMMENT =		library for programmatically tunneling connections

DISTNAME =		net-ssh-gateway-1.2.0
CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		net/ruby-net-ssh,${MODRUBY_FLAVOR}>=2.6.5

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
