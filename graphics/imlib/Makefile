# $OpenBSD: Makefile,v 1.1.1.1 1999/03/19 07:33:56 brad Exp $
# $FreeBSD: Makefile,v 1.45 1999/03/09 01:08:57 nectar Exp $

DISTNAME=	imlib-1.9.4
CATEGORIES=	graphics
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR=	gnome-1.0/sources

MAINTAINER=	brad@openbsd.org

BUILD_DEPENDS=	gettext:${PORTSDIR}/devel/gettext \
		${LOCALBASE}/lib/libpbm.a:${PORTSDIR}/graphics/netpbm
RUN_DEPENDS=	gettext:${PORTSDIR}/devel/gettext
LIB_DEPENDS=	gif:${PORTSDIR}/graphics/giflib \
		glib\\.1\\.2:${PORTSDIR}/devel/glib \
		gtk\\.1\\.2:${PORTSDIR}/x11/gtk+ \
		jpeg:${PORTSDIR}/graphics/jpeg \
		png:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff34 \

USE_GMAKE=	yes
USE_X11=	yes
SYSCONFDIR=	${PREFIX}/lib/imlib
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--sysconfdir=${SYSCONFDIR}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config" \
		LIBS="-L${LOCALBASE}/lib"

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/imlib.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
