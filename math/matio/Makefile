# $OpenBSD: Makefile,v 1.17 2020/11/18 14:20:14 benoit Exp $

COMMENT=	library for reading and writing Matlab MAT files

DISTNAME=	matio-1.5.19
SHARED_LIBS=	matio	3.0      # 11.1
CATEGORIES=	math

HOMEPAGE=	https://sourceforge.net/projects/matio/

# BSD
PERMIT_PACKAGE=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=matio/}

WANTLIB =		c hdf5 m z

LIB_DEPENDS=		math/hdf5

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-mat73 \
			--with-hdf5=${LOCALBASE}

.include <bsd.port.mk>
