# $OpenBSD: Makefile,v 1.2 2011/09/16 22:16:50 sthen Exp $

COMMENT =		library to simplify writing unit tests for C applications

DISTNAME =		cmockery-0.1.2
REVISION =		0

SHARED_LIBS +=		cmockery                  0.0 # 0.0

CATEGORIES =		devel

HOMEPAGE =		http://cmockery.googlecode.com/

# Apache v2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${HOMEPAGE}files/

CONFIGURE_STYLE =	gnu

USE_LIBTOOL =		Yes

MAKE_FLAGS =		docdir="$(PREFIX)/share/doc/cmockery"

.include <bsd.port.mk>
