# $OpenBSD: Makefile.inc,v 1.3 2013/03/11 12:27:53 sthen Exp $

COMMENT=	powerful, light-weight programming language (version ${VERSION})

DISTNAME=	lua-${VERSION}

SHARED_ONLY=	Yes

CATEGORIES=	lang

MASTER_SITES=	http://www.lua.org/ftp/ \
		http://www.tecgraf.puc-rio.br/lua/ftp/

HOMEPAGE=	http://www.lua.org/

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MAKE_FLAGS+=	CC="${CC}"

NO_TEST=	Yes
