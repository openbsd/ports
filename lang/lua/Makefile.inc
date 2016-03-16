# $OpenBSD: Makefile.inc,v 1.5 2016/03/16 20:02:11 naddy Exp $

COMMENT=	powerful, light-weight programming language (version ${VERSION})

DISTNAME=	lua-${VERSION}

CATEGORIES=	lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/

HOMEPAGE=	http://www.lua.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS+=	CC="${CC}" MYLDFLAGS=-lm

NO_TEST=	Yes
