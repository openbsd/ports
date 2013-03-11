# $OpenBSD: Makefile,v 1.3 2013/03/11 10:50:10 espie Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.36.1
DISTNAME =		ivykis-$V
PKGNAME =		lib${DISTNAME}

SHARED_LIBS =		ivykis	1.0

CATEGORIES =		devel

HOMEPAGE =		http://libivykis.sourceforge.net/

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libivykis/$V/}

CONFIGURE_STYLE =	gnu
USE_LIBTOOL =		Yes

.include <bsd.port.mk>
