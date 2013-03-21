# $OpenBSD: Makefile,v 1.9 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.9.9
SHARED_LIBS +=  check                2.0      # unknown

CATEGORIES =	devel

HOMEPAGE =	http://check.sf.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=check/}


CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
