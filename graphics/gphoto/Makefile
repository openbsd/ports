# Makefile for:		gphoto
# Version required:	0.4.0
# Date created:		7 Nov 1999
# Whom:			dugsong@monkey.org
#
# $OpenBSD: Makefile,v 1.5 2000/04/09 17:36:39 espie Exp $

DISTNAME=	gphoto-0.4.1
CATEGORIES=	graphics
NEED_VERSION=	 1.230
FAKE=No

MASTER_SITES=	ftp://ftp.gphoto.org/projects/gphoto/pub/tar/0.4/

MAINTAINER=	dugsong@monkey.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib \
		Magick.4::graphics/ImageMagick

GNU_CONFIGURE=	Yes

USE_AUTOCONF=	Yes

.include <bsd.port.mk>
