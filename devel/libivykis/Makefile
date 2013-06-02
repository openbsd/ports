# $OpenBSD: Makefile,v 1.5 2013/06/02 19:57:28 steven Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.36.2
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
