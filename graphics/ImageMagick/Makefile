# OpenBSD makefile for:	ImageMagick
# Version required:	4.0.6
# Date created:		1998-Apr-21
# Whom:			marc@OpenBSD.ORG
#
# $OpenBSD: Makefile,v 1.3 1998/06/10 02:56:12 marc Exp $
#

DISTNAME=		ImageMagick-4.0.6
CATEGORIES=     	graphics x11

MAINTAINER=		marc@openbsd.org

MASTER_SITES=		ftp://ftp.wizards.dupont.com/pub/ImageMagick/ \
			ftp://ftp.fifi.org/pub/ImageMagick \
			ftp://gd.tuwien.ac.at/pub/graphics/ImageMagick

# Future: add FreeType, FlashPix, NCSA HDF, JBIG, scanimage, etc.
#
RUN_DEPENDS=		fig2dev:${PORTSDIR}/print/transfig \
			gs:${PORTSDIR}/print/ghostscript5 \

LIB_DEPENDS=    	jpeg\\.62\\.:${PORTSDIR}/graphics/jpeg \
			mpeg\\.1\\.:${PORTSDIR}/graphics/mpeg-lib \
			png\\.1\\.:${PORTSDIR}/graphics/png \
			tiff\\.1:${PORTSDIR}/graphics/tiff34

USE_X11=		yes
GNU_CONFIGURE=		yes
.if (${MACHINE_ARCH} != "alpha")
CONFIGURE_ARGS+=	--enable-shared
.endif
CONFIGURE_ARGS+=	--enable-static
CONFIGURE_ENV=		${SETENV} CPPFLAGS=-I/usr/local/include \
			LDFLAGS=-L/usr/local/lib

.include <bsd.port.mk>
