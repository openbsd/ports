# $OpenBSD: Makefile.inc,v 1.4 2015/05/18 16:43:52 sthen Exp $

COMMENT=	powerful, light-weight programming language (version ${VERSION})

DISTNAME=	lua-${VERSION}

SHARED_ONLY=	Yes

CATEGORIES=	lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/

HOMEPAGE=	http://www.lua.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS+=	CC="${CC}" MYLDFLAGS=-lm

NO_TEST=	Yes
