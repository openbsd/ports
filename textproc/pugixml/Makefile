# $OpenBSD: Makefile,v 1.15 2022/02/10 09:25:24 sthen Exp $

COMMENT=	light-weight, simple and fast XML parser for C++

V=		1.12
DISTNAME=	pugixml-$V

SHARED_LIBS +=	pugixml                   1.1 # 1.9

CATEGORIES=	textproc devel

HOMEPAGE=	https://pugixml.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc

MASTER_SITES=	https://github.com/zeux/pugixml/releases/download/v$V/

MODULES=	devel/cmake

CONFIGURE_ARGS+= -DBUILD_SHARED_LIBS=on

NO_TEST=	Yes

.include <bsd.port.mk>
