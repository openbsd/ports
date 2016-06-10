# $OpenBSD: Makefile,v 1.2 2016/06/10 20:48:30 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-3.4.0
CATEGORIES =		www

HOMEPAGE =		http://puma.io/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
