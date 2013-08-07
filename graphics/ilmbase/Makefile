# $OpenBSD: Makefile,v 1.10 2013/08/07 15:37:10 naddy Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-1.0.1
REVISION =	2
CATEGORIES=	graphics

SHARED_LIBS +=	Half                 4.0      # .6.0
SHARED_LIBS +=	Iex                  4.0      # .6.0
SHARED_LIBS +=	Imath                4.0      # .6.0
SHARED_LIBS +=	IlmThread            4.0      # .6.0

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=openexr/}

WANTLIB=	m stdc++

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-lstdc++ -lm"

USE_GMAKE=	Yes

.include <bsd.port.mk>
