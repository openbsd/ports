# Makefile for:		gphoto
# Version required:	0.4.0
# Date created:		7 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.1.1.1 1999/12/05 18:11:13 dugsong Exp $

DISTNAME=	gphoto-0.4.1

CATEGORIES=	graphics

MASTER_SITES=	ftp://ftp.gphoto.org/projects/gphoto/pub/tar/0.4/

MAINTAINER=	dugsong@monkey.org

LIB_DEPENDS=	gtk.1.2:${PORTSDIR}/x11/gtk+ \
		Imlib.19:${PORTSDIR}/graphics/imlib \
		Magick.4:${PORTSDIR}/graphics/ImageMagick

GNU_CONFIGURE=	yes

USE_AUTOCONF=	yes

.include <bsd.port.mk>
