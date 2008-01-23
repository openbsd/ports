# $OpenBSD: Makefile,v 1.1.1.1 2008/01/23 17:02:30 okan Exp $

COMMENT=	powerful and simple GTK editor

DISTNAME=	tea-17.5.4
CATEGORIES=	editors x11
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tea-editor/}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://tea-editor.sf.net/

MAINTAINER=	Giovanni Bechis <g.bechis@snb.it>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2 \
		gtksourceview-2.0:gtksourceview-2.*:x11/gtksourceview \
		aspell.>=16:aspell-*:textproc/aspell/core \
		zzip.>=13::archivers/zziplib
RUN_DEPENDS=	::textproc/antiword

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xcomposite Xdamage Xrender expat fontconfig freetype z \
		atk-1.0 glib-2.0 gmodule-2.0 gobject-2.0 glitz png \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 cairo xml2 \
		c m stdc++

MODULES=	devel/gettext

SEPARATE_BUILD=		simple
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS="-lm -lstdc++"
USE_X11=		Yes

.include <bsd.port.mk>
