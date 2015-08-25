# $OpenBSD: Makefile,v 1.28 2015/08/25 13:18:24 sthen Exp $

COMMENT=	mikmod sound library

DISTNAME=	libmikmod-3.3.7
SHARED_LIBS +=	mikmod               4.0      # .3.0
CATEGORIES=	audio devel
REVISION=	0

HOMEPAGE=	http://mikmod.shlomifish.org/

# LGPLv2.1+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m pthread sndio

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mikmod/}

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CFLAGS +=	-DDRV_SNDIO
CONFIGURE_ENV=	LIBRARY_LIB="-lsndio"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

post-extract:
	cp ${FILESDIR}/drv_sndio.c ${WRKSRC}/drivers

.include <bsd.port.mk>
