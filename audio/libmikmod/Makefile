# $OpenBSD: Makefile,v 1.23 2013/01/02 15:13:02 stsp Exp $

COMMENT=	mikmod sound library

VERSION=	3.1.10
DISTNAME=	libmikmod-${VERSION}
REVISION=	10
SHARED_LIBS +=	mikmod               2.4      # .2.4
CATEGORIES=    	audio devel

HOMEPAGE=	http://mikmod.raphnet.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/libmikmod/ \
		${MASTER_SITE_SUNSITE:=apps/sound/libs/}

WANTLIB=	sndio

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes
CFLAGS += 	-DDRV_SNDIO
CONFIGURE_ENV=	LIBRARY_LIB="-lsndio"
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-dl \
		 --disable-oss \
		 --disable-esd

post-extract:
	cp ${FILESDIR}/drv_sndio.c ${WRKSRC}/drivers

.include <bsd.port.mk>
