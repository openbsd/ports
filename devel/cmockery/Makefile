# $OpenBSD: Makefile,v 1.6 2014/11/18 10:17:17 brad Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		2

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		https://cmockery.googlecode.com/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu


MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
