# $OpenBSD: Makefile,v 1.24 2013/01/13 09:10:40 sthen Exp $

COMMENT=	mikmod sound library

DISTNAME=	libmikmod-3.2.0
SHARED_LIBS +=	mikmod               3.0      # .3.0
CATEGORIES=	audio devel

HOMEPAGE=	http://mikmod.shlomifish.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}files/

WANTLIB=	m sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes
CFLAGS +=	-DDRV_SNDIO
CONFIGURE_ENV=	LIBRARY_LIB="-lsndio"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

post-extract:
	cp ${FILESDIR}/drv_sndio.c ${WRKSRC}/drivers

.include <bsd.port.mk>
