# $OpenBSD: Makefile,v 1.9 2021/03/19 17:51:35 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-5.2.2
CATEGORIES =		www

HOMEPAGE =		https://puma.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

RUN_DEPENDS =		devel/ruby-nio4r,${MODRUBY_FLAVOR}>=2,<3
BUILD_DEPENDS =		${RUN_DEPENDS}

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
