# $OpenBSD: Makefile,v 1.18 2018/11/29 21:06:27 naddy Exp $

COMMENT =	skeletal based character animation library
DISTNAME =	cal3d-0.11.0
REVISION =	7

SHARED_LIBS =	cal3d	1.0	# .12.0

CATEGORIES =	graphics

HOMEPAGE =	https://mp3butcher.github.io/Cal3D/

MAINTAINER =	Laurent Fanis <laurent.fanis@gmail.com>

# LGPL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =	https://mp3butcher.github.io/Cal3D/sources/

CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
