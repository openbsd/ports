# $OpenBSD: Makefile,v 1.14 1999/03/30 06:52:48 brad Exp $

DISTNAME=	gimp-1.1.3
CATEGORIES=	graphics
MASTER_SITES=	ftp://ftp.gimp.org/pub/gimp/unstable/v1.1.3/ \
		ftp://ftp.cs.umn.edu/pub/gimp/gimp/unstable/v1.1.3/ \
		http://www.ameth.org/gimp/pub/gimp/unstable/v1.1.3/

MAINTAINER=	brad@openbsd.org

RUN_DEPENDS=	wget:${PORTSDIR}/net/wget
LIB_DEPENDS=	aa:${PORTSDIR}/graphics/aalib \
		intl:${PORTSDIR}/devel/gettext \
		glib.1.2:${PORTSDIR}/devel/glib \
		gtk.1.2:${PORTSDIR}/x11/gtk+ \
		jpeg:${PORTSDIR}/graphics/jpeg \
		mpeg:${PORTSDIR}/graphics/mpeg-lib \
		png:${PORTSDIR}/graphics/png \
		tiff:${PORTSDIR}/graphics/tiff34 \
		Xpm:${PORTSDIR}/graphics/xpm

USE_X11=	yes
USE_GMAKE=	yes
SYSCONFDIR=	${PREFIX}/lib
SEPARATE_BUILD=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static --disable-perl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		GTK_CONFIG="${X11BASE}/bin/gtk-config"

post-install:
	@${MKDIR} ${LOCALBASE}/share/aclocal
	@${INSTALL_DATA} ${WRKSRC}/gimp.m4 ${LOCALBASE}/share/aclocal/
	${LDCONFIG} -m ${PREFIX}/lib

.include <bsd.port.mk>
