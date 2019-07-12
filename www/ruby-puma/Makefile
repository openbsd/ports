# $OpenBSD: Makefile,v 1.6 2019/07/12 20:51:04 sthen Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-3.10.0
REVISION =		0
CATEGORIES =		www

HOMEPAGE =		http://puma.io/

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
