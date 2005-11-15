# $OpenBSD: Makefile,v 1.3 2005/11/15 21:14:27 wilfried Exp $

COMMENT=	"CSS editor"

DISTNAME=	cssed-0.3.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://cssed.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cssed/}

WANTLIB=	c freetype pthread stdc++ m X11 fontconfig \
		gthread-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 atk-1.0.0.0 cairo pango-1.0.0.0 \
		pangocairo-1.0.0.0 pangoft2-1.0.0.0

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.600.10,gdk_pixbuf-2.0.600.0,gdk-x11-2.0.600.0::x11/gtk+2 \
		expat.4::textproc/expat

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=--with-help-menus

.include <bsd.port.mk>
