# $OpenBSD: Makefile,v 1.10 2021/05/26 20:32:38 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-5.3.2
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
