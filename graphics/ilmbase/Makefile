# $OpenBSD: Makefile,v 1.12 2015/04/21 18:24:22 sthen Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-1.0.1
REVISION =	4
CATEGORIES=	graphics

SHARED_LIBS +=	Half                 4.0      # .6.0
SHARED_LIBS +=	Iex                  4.0      # .6.0
SHARED_LIBS +=	Imath                4.0      # .6.0
SHARED_LIBS +=	IlmThread            4.0      # .6.0

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread stdc++

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=openexr/}


CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-lstdc++ -lm"

USE_GMAKE=	Yes

.include <bsd.port.mk>
