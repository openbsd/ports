# $OpenBSD: Makefile,v 1.5 2022/02/28 10:59:51 sthen Exp $

COMMENT=	open framework for storing and sharing scene data

GH_ACCOUNT=	alembic
GH_PROJECT=	alembic
GH_TAGNAME=	1.8.3

SHARED_LIBS +=  Alembic                   0.1 # 1.8

CATEGORIES=	graphics

HOMEPAGE=	https://www.alembic.io/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Imath-3_1 c m

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	math/imath

.include <bsd.port.mk>
