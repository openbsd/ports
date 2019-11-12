# $OpenBSD: Makefile,v 1.7 2019/11/12 06:48:14 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-4.3.0
CATEGORIES =		www

HOMEPAGE =		http://puma.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

RUN_DEPENDS =		devel/ruby-nio4r,${MODRUBY_FLAVOR}>=2,<3
BUILD_DEPENDS =		${RUN_DEPENDS}

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
