# $OpenBSD: Makefile,v 1.4 2013/03/21 08:45:15 ajacoutot Exp $

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

.include <bsd.port.mk>
