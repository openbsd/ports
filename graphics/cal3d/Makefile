# $OpenBSD: Makefile,v 1.4 2009/06/28 21:46:38 sthen Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
PKGNAME =	${DISTNAME}p0

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/cal3d/

MAINTAINER =	Laurent Fanis <laurent@openbsd.org>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c m stdc++

MASTER_SITES =	http://download.gna.org/cal3d/sources/

USE_LIBTOOL =	Yes

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
