# $OpenBSD: Makefile,v 1.3 2016/11/04 21:46:12 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-3.6.0
CATEGORIES =		www

HOMEPAGE =		http://puma.io/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
