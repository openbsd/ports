# $OpenBSD: Makefile,v 1.10 2001/10/24 12:19:22 espie Exp $

COMMENT=	"universal digital camera picture control tool"

DISTNAME=	gphoto-0.4.3
CATEGORIES=	graphics
NEED_VERSION=	1.474
MASTER_SITES=	http://www.gphoto.org/dist/

HOMEPAGE=	http://www.gphoto.org/

LIB_DEPENDS=	Imlib.19,gdk_imlib::graphics/imlib \
		Magick.5::graphics/ImageMagick

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS='-DDOCDIR="${PREFIX}/share/doc/gphoto"'

.include <bsd.port.mk>
