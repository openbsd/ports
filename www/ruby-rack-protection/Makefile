# $OpenBSD: Makefile,v 1.4 2017/11/14 17:08:13 jeremy Exp $

COMMENT =	protects rack apps against typical web attacks

DISTNAME =	rack-protection-2.0.0
CATEGORIES =	www

HOMEPAGE =	https://github.com/rkh/rack-protection

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =	lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		www/ruby-rack,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
