# $OpenBSD: Makefile,v 1.14 2004/05/16 21:10:08 naddy Exp $

COMMENT=	"universal digital camera picture control tool"

DISTNAME=	gphoto-0.4.3
CATEGORIES=	graphics
MASTER_SITES=	http://www.gphoto.org/dist/

HOMEPAGE=	http://www.gphoto.org/

LIB_DEPENDS=	Imlib.19,gdk_imlib::graphics/imlib

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	CPPFLAGS='-DDOCDIR="${PREFIX}/share/doc/gphoto"'

post-extract:
	@perl -pi -e 's/\r$$//' ${WRKSRC}/sony/command.c

.include <bsd.port.mk>
