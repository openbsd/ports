# $OpenBSD: Makefile.inc,v 1.7 2019/07/12 20:47:19 sthen Exp $

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
