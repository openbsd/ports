# $OpenBSD: Makefile,v 1.8 2017/11/03 10:34:01 steven Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.42
DISTNAME =		ivykis-$V
PKGNAME =		lib${DISTNAME}

SHARED_LIBS =		ivykis	2.0

CATEGORIES =		devel

HOMEPAGE =		http://libivykis.sourceforge.net/

MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libivykis/$V/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
