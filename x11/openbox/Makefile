# $OpenBSD: Makefile,v 1.32 2007/06/08 18:41:39 ajacoutot Exp $

COMMENT=	small, fast & usable window manager

DISTNAME=	openbox-3.4.0
SHARED_LIBS+=	obparser	4.0 # .13.0
SHARED_LIBS+=	obrender	4.0 # .13.0
CATEGORIES=	x11
MASTER_SITES=	http://offload1.icculus.org/openbox/releases/

HOMEPAGE=	http://icculus.org/openbox/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

MODULES=	devel/gettext
LIB_DEPENDS+=	pango-1.0,pangoxft-1.0,pangoft2-1.0::devel/pango \
		xml2.>=6::textproc/libxml \
		startup-notification-1.>=1::devel/startup-notification

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xft Xinerama Xrandr Xrender c \
			fontconfig freetype m z glib-2.0 gmodule-2.0 \
			gobject-2.0 Xau Xcursor Xdmcp Xfixes expat

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
