COMMENT=	powerful, light-weight programming language (version ${VERSION})

DISTNAME=	lua-${VERSION}

CATEGORIES=	lang

SITES=		https://www.lua.org/ftp/ \
		https://www.tecgraf.puc-rio.br/lua/ftp/

HOMEPAGE=	https://www.lua.org/

# MIT
PERMIT_PACKAGE=	Yes

MAKE_FLAGS+=	CC="${CC}" MYLDFLAGS=-lm

NO_TEST=	Yes
