# $OpenBSD: Makefile,v 1.5 2019/07/12 20:51:04 sthen Exp $

COMMENT =	protects rack apps against typical web attacks

DISTNAME =	rack-protection-2.0.0
CATEGORIES =	www

HOMEPAGE =	https://github.com/rkh/rack-protection

# MIT
PERMIT_PACKAGE =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
