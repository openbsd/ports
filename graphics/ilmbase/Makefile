# $OpenBSD: Makefile,v 1.5 2009/02/16 15:28:58 sthen Exp $

COMMENT=	ILM base libraries

DISTNAME=	ilmbase-1.0.1
PKGNAME=	${DISTNAME}p2
CATEGORIES=	graphics

SHARED_LIBS +=	Half                 4.0      # .6.0
SHARED_LIBS +=	Iex                  4.0      # .6.0
SHARED_LIBS +=	Imath                4.0      # .6.0
SHARED_LIBS +=	IlmThread            4.0      # .6.0

HOMEPAGE=	http://www.openexr.com/

# Modified BSD license
# `name of ILM not to be used for advertizing without written agreement'
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SAVANNAH:=openexr/}

WANTLIB=	m stdc++

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	LIBS="-lstdc++ -lm"

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
