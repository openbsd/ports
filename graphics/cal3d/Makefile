# $OpenBSD: Makefile,v 1.16 2018/01/24 08:01:00 kirby Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
REVISION =	5

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	https://mp3butcher.github.io/Cal3D/

MAINTAINER =	Laurent Fanis <laurent.fanis@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

MASTER_SITES =	https://mp3butcher.github.io/Cal3D/sources/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
