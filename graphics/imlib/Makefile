# $OpenBSD: Makefile,v 1.43 2002/05/17 02:42:15 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

COMMENT=	"image manipulation library for X11"

DISTNAME=	imlib-1.9.14
CATEGORIES=	graphics devel
NEED_VERSION=	1.525
MASTER_SITES=	${MASTER_SITE_GNOME:=stable/sources/imlib/}

MODULES=	gettext
LIB_DEPENDS= 	gtk.1.2,gdk.1.2::x11/gtk+ \
		jpeg.62::graphics/jpeg \
		ungif.5::graphics/libungif \
		png.2::graphics/png \
		tiff.35::graphics/tiff

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

VMEM_WARNING=	Yes

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-modules
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include/libpng -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${PREFIX}/share/aclocal
	@cd ${PREFIX}/share/examples/imlib && mv imrc imrc-sample

.include <bsd.port.mk>
