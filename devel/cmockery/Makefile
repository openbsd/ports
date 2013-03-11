# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:02 espie Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		0

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://cmockery.googlecode.com/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu

USE_LIBTOOL =		Yes

MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
