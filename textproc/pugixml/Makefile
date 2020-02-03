# $OpenBSD: Makefile,v 1.12 2020/02/03 20:40:41 sthen Exp $

COMMENT=	light-weight, simple and fast XML parser for C++

V=		1.9
DISTNAME=	pugixml-$V
REVISION=	0

SHARED_LIBS +=	pugixml                   1.0 # 1.9

CATEGORIES=	textproc devel

HOMEPAGE=	https://pugixml.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://github.com/zeux/pugixml/releases/download/v$V/

MODULES=	devel/cmake

CONFIGURE_ARGS+= -DBUILD_SHARED_LIBS=on

NO_TEST=	Yes

.include <bsd.port.mk>
