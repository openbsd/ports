# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:06 sthen Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		4

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

# Apache v2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://distfiles.nl/

CONFIGURE_STYLE =	gnu


MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
