# $OpenBSD: Makefile,v 1.8 2000/11/30 04:41:55 dugsong Exp $

DISTNAME=	gphoto-0.4.3

CATEGORIES=	graphics

MASTER_SITES=	http://www.gphoto.net/dist/

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gtk.1.2::x11/gtk+ \
		Imlib.19::graphics/imlib \
		Magick.5::graphics/ImageMagick

CONFIGURE_STYLE=autoconf

.include <bsd.port.mk>
