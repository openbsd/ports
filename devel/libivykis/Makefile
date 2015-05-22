# $OpenBSD: Makefile,v 1.6 2015/05/22 11:31:13 ajacoutot Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.36.2
DISTNAME =		ivykis-$V
PKGNAME =		lib${DISTNAME}
REVISION =		0

SHARED_LIBS =		ivykis	1.0

CATEGORIES =		devel

HOMEPAGE =		http://libivykis.sourceforge.net/

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libivykis/$V/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
