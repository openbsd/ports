# $OpenBSD: Makefile,v 1.2 2009/09/14 15:53:09 landry Exp $

COMMENT =	high-performance event loop library

DISTNAME =	libev-3.8
CATEGORIES =	devel
PKGNAME =	${DISTNAME}p0

MAINTAINER =	Bapt <baptiste.daroussin@gmail.com>

SHARED_LIBS=	ev 0.0 #.3

HOMEPAGE =	http://dist.schmorp.de/libev/
MASTER_SITES =	${HOMEPAGE}

# BSD / GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =		m

USE_LIBTOOL =		Yes
CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
