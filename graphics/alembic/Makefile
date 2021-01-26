# $OpenBSD: Makefile,v 1.1.1.1 2021/01/26 15:46:19 rsadowski Exp $

COMMENT=	open framework for storing and sharing scene data

GH_ACCOUNT=	alembic
GH_PROJECT=	alembic
GH_TAGNAME=	1.7.16

SHARED_LIBS +=  Alembic                   0.0 # 1.7

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
