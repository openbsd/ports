# $OpenBSD: Makefile,v 1.1.1.1 2007/05/26 17:11:48 ajacoutot Exp $

COMMENT=	"fast and lightweight file manager"

DISTNAME=	pcmanfm-0.3.2.2
CATEGORIES=	x11

HOMEPAGE=	http://pcmanfm.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=pcmanfm/}

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 c cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread z

LIB_DEPENDS=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2 \
		fam::sysutils/fam \
		startup-notification-1.>=1::devel/startup-notification
RUN_DEPENDS=	:gnome-icon-theme-*:x11/gnome/icon-theme \
		:desktop-file-utils-*:devel/desktop-file-utils

MODULES=	devel/gettext
USE_LIBTOOL=	Yes
USE_X11=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -lm"
CONFIGURE_ARGS=	--disable-hal

.include <bsd.port.mk>
