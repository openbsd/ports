# Makefile for:		gphoto
# Version required:	0.4.0
# Date created:		7 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.7 2000/10/22 15:42:17 espie Exp $

DISTNAME=	gphoto-0.4.1
CATEGORIES=	graphics
NEED_VERSION=	1.305
FAKE=No

MASTER_SITES=	ftp://ftp.gphoto.org/projects/gphoto/pub/tar/0.4/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib \
		Magick.4::graphics/ImageMagick

CONFIGURE_STYLE=autoconf

.include <bsd.port.mk>
