# $OpenBSD: Makefile,v 1.7 2015/03/16 18:07:39 naddy Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		3

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		https://cmockery.googlecode.com/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu


MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
