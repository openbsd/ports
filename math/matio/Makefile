# $OpenBSD: Makefile,v 1.15 2016/12/30 12:12:28 shadchin Exp $

COMMENT=	library for reading and writing Matlab MAT files

DISTNAME=	matio-1.5.9
SHARED_LIBS=	matio	2.0      # 6.0
CATEGORIES=	math

HOMEPAGE=	http://sourceforge.net/projects/matio/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=matio/}

WANTLIB =		c hdf5 m z

LIB_DEPENDS=		math/hdf5

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--enable-mat73 \
			--with-hdf5=${LOCALBASE}

.include <bsd.port.mk>
