# $OpenBSD: Makefile,v 1.9 2019/07/12 20:44:39 sthen Exp $

COMMENT =		asynchronous I/O readiness notification library

V =			0.42
DISTNAME =		ivykis-$V
PKGNAME =		lib${DISTNAME}

SHARED_LIBS =		ivykis	2.0

CATEGORIES =		devel

HOMEPAGE =		http://libivykis.sourceforge.net/

MAINTAINER =		Steven Mestdagh <steven@openbsd.org>

# LGPL v2.1
PERMIT_PACKAGE =	Yes

WANTLIB =		pthread

MASTER_SITES =		${MASTER_SITE_SOURCEFORGE:=libivykis/$V/}

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
