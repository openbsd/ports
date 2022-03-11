COMMENT=	powerful, light-weight programming language (version ${VERSION})

DISTNAME=	lua-${VERSION}

CATEGORIES=	lang

MASTER_SITES=	https://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/

HOMEPAGE=	http://www.lua.org/

# MIT
PERMIT_PACKAGE=	Yes

MAKE_FLAGS+=	CC="${CC}" MYLDFLAGS=-lm

NO_TEST=	Yes
