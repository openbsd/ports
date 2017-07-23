# $OpenBSD: Makefile,v 1.14 2017/07/23 09:26:27 espie Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
REVISION =	3

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	http://home.gna.org/cal3d/

MAINTAINER =	Laurent Fanis <laurent.fanis@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	http://download.gna.org/cal3d/sources/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
