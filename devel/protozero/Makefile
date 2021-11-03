# $OpenBSD: Makefile,v 1.5 2021/11/03 05:41:50 tb Exp $

COMMENT =	minimalist protocol buffer decoder and encoder in C++

GH_ACCOUNT =	mapbox
GH_PROJECT =	protozero
GH_TAGNAME =	v1.6.3
REVISION =	0

CATEGORIES =	devel

# 3-clause BSD
PERMIT_PACKAGE =	Yes

COMPILER =	base-clang ports-gcc ports-clang

CONFIGURE_ARGS	= -DWERROR=NO

MODULES =	devel/cmake
BUILD_DEPENDS =	devel/protobuf

.include <bsd.port.mk>
