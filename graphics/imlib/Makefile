# $OpenBSD: Makefile,v 1.11 2000/01/12 01:40:33 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.7
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/imlib

NEED_VERSION=	1.73

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		gif.4.1:${PORTSDIR}/graphics/giflib \
		jpeg.62:${PORTSDIR}/graphics/jpeg \
		png.1.3:${PORTSDIR}/graphics/png \
		tiff.35:${PORTSDIR}/graphics/tiff
BUILD_DEPENDS=	convert:${PORTSDIR}/graphics/ImageMagick \
		giftopnm:${PORTSDIR}/graphics/netpbm
RUN_DEPENDS=	convert:${PORTSDIR}/graphics/ImageMagick \
		giftopnm:${PORTSDIR}/graphics/netpbm

USE_GMAKE=	yes
USE_X11=	yes
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

pre-build:
	@echo ""
	@echo "*** WARNING: you may see an error such as"
	@echo "***       virtual memory exhausted"
	@echo "*** when building this package.  If you do you must increase"
	@echo "*** your limits.  See the man page for your shell and look"
	@echo "*** for the 'limit' or 'ulimit' command."
	@echo ""

post-install:
	${INSTALL_DATA_DIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${LOCALBASE}/share/aclocal/
	@${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
