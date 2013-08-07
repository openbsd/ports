# $OpenBSD: Makefile,v 1.5 2013/08/07 21:31:30 naddy Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		1

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		https://cmockery.googlecode.com/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu


MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
