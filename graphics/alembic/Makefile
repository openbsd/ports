# $OpenBSD: Makefile,v 1.3 2021/06/20 11:29:19 sthen Exp $

COMMENT=	open framework for storing and sharing scene data

GH_ACCOUNT=	alembic
GH_PROJECT=	alembic
GH_TAGNAME=	1.8.2

SHARED_LIBS +=  Alembic                   0.1 # 1.8

CATEGORIES=	graphics

HOMEPAGE=	https://www.alembic.io/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	${COMPILER_LIBCXX} Half-2_5 Iex-2_5 IlmThread-2_5 Imath-2_5
WANTLIB +=	c m

COMPILER=	base-clang ports-gcc base-gcc

MODULES=	devel/cmake

LIB_DEPENDS=	graphics/openexr

.include <bsd.port.mk>
