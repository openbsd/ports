# $OpenBSD: Makefile,v 1.7 1999/10/09 17:28:50 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= sources/imlib

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	convert:${PORTSDIR}/graphics/ImageMagick \
		giftopnm:${PORTSDIR}/graphics/netpbm
LIB_DEPENDS=	gif:${PORTSDIR}/graphics/giflib \
		intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff34

USE_GMAKE=	yes
USE_X11=	yes
SYSCONFDIR=	${PREFIX}/lib/imlib
SEPARATE_BUILD=	concurrent
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}
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
	@${MKDIR} ${LOCALBASE}/share/aclocal
	${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
