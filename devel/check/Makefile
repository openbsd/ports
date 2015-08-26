# $OpenBSD: Makefile,v 1.13 2015/08/26 15:12:24 jasper Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.10.0
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
