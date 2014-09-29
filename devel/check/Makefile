# $OpenBSD: Makefile,v 1.12 2014/09/29 19:58:04 jasper Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.9.14
SHARED_LIBS +=  check                3.0      # unknown

CATEGORIES =	devel

HOMEPAGE =	http://check.sf.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=check/}


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
