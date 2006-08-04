# $OpenBSD: Makefile,v 1.8 2006/08/04 00:10:42 espie Exp $

COMMENT=	"CSS editor"

DISTNAME=	cssed-0.4.0
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www editors

HOMEPAGE=	http://cssed.sourceforge.net/

MAINTAINER=	Antoine Jacoutot <ajacoutot@lphp.org>

# GPL
PERMIT_PACKAGE_CDROM=	yes
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	yes
PERMIT_DISTFILES_FTP=	yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cssed/}

WANTLIB=	c freetype pthread stdc++ m X11 fontconfig \
		z gthread-2.0.0.0 glib-2.0.0.0 gmodule-2.0.0.0 \
		gobject-2.0.0.0 pangoft2-1.0.0.0 pango-1.0.0.0 atk-1.0.0.0 \
		pangocairo-1.0.0.0 cairo

BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=	gtk-x11-2.0.>=600.10,gdk_pixbuf-2.0.>=600.0,gdk-x11-2.0.>=600.0::x11/gtk+2 \
		xml2.8::textproc/libxml

MODULES=	devel/gettext

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	--with-help-menus \
		--with-plugin-headers \
		--without-terminal \
		--without-ipc-queue

# trailing ^M after a \ for line continuation confuses gcc2
pre-patch:
	@perl -i -pe 's/\r$$//' ${WRKSRC}/scintilla/gtk/ScintillaGTK.cxx

.include <bsd.port.mk>
