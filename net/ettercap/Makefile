# $OpenBSD: Makefile,v 1.32 2006/01/20 08:39:12 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"multi-purpose sniffer/interceptor/logger"

VER=		0.6.b
DISTNAME=	ettercap-${VER}
PKGNAME=	${DISTNAME}p3
CATEGORIES=	net

HOMEPAGE=	http://ettercap.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=ettercap/} \
		${MASTER_SITE_PACKETSTORM:=sniffers/ettercap/}

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		pthread c crypto des form ncurses ssl

FLAVORS=		no_x11
FLAVOR?=

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-https

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--enable-gtk=no
.else
LIB_DEPENDS=	gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
WANTLIB+=		X11 Xext Xft Xrender atk-1.0.0.0 fontconfig \
			freetype glib-2.0.0.0 gmodule-2.0.0.0 \
			gobject-2.0.0.0 m pango-1.0.0.0 pangox-1.0.0.0 \
			pangoxft-1.0.0.0 pangoft2-1.0.0.0
MODULES=	devel/gettext
USE_X11=	Yes
.endif

NO_REGRESS=	Yes

.include <bsd.port.mk>
