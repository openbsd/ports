# $OpenBSD: Makefile,v 1.1.1.1 2015/07/16 21:37:45 jeremy Exp $

COMMENT =		simple, fast, threaded webserver for rack applications

DISTNAME =		puma-2.12.1
CATEGORIES =		www

HOMEPAGE =		http://puma.io/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

WANTLIB =		crypto ssl
CONFIGURE_STYLE =	ruby gem ext

.include <bsd.port.mk>
