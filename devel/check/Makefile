# $OpenBSD: Makefile,v 1.7 2013/01/21 13:01:48 ajacoutot Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.9.9
SHARED_LIBS +=  check                2.0      # unknown

CATEGORIES =	devel

HOMEPAGE =	http://check.sf.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += pthread

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=check/}

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	${CONFIGURE_SHARED}

.include <bsd.port.mk>
