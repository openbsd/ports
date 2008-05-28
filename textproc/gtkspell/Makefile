# $OpenBSD: Makefile,v 1.24 2008/05/28 07:42:36 ajacoutot Exp $

COMMENT=	gtk2 spelling checker
DISTNAME=	gtkspell-2.0.13
SHARED_LIBS=	gtkspell 1.0 # .0.0

CATEGORIES=	textproc x11

HOMEPAGE=	http://gtkspell.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}download/

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
		fontconfig freetype glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 png stdc++ z

USE_X11=	Yes
USE_LIBTOOL=	Yes

MODULES=	devel/gettext \
		textproc/intltool

LIB_DEPENDS=	enchant.>=5::textproc/enchant \
		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		lt_cv_path_SED=/usr/bin/sed
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc

.include <bsd.port.mk>
