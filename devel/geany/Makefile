# $OpenBSD: Makefile,v 1.19 2009/05/31 01:56:51 landry Exp $

COMMENT=	small and lightweight IDE

DISTNAME=	geany-0.17
CATEGORIES=	devel

HOMEPAGE=	http://www.geany.org

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

# GPL + Scintilla License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=geany/}
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		textproc/intltool

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB=	X11 Xext Xrender Xau Xcursor Xdmcp Xfixes Xi \
		Xcomposite Xdamage pcre \
		Xinerama Xrandr expat stdc++ c m z glitz png \
		glib-2.0 gmodule-2.0 gobject-2.0 gio-2.0 \
		fontconfig freetype atk-1.0 cairo \
		pango-1.0 pangoft2-1.0 pangocairo-1.0 pixman-1

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=	:desktop-file-utils-*:devel/desktop-file-utils

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-static

FLAVORS=	vte
FLAVOR?=

.if ${FLAVOR:L:Mvte}
LIB_DEPENDS+=	:vte-*:devel/vte
.else
CONFIGURE_ARGS+=--disable-vte
.endif

pre-configure:
	@perl -pi -e 's:\@GMSGFMT\@:${LOCALBASE}/bin/msgfmt:' \
		${WRKSRC}/po/Makefile.in.in

.include <bsd.port.mk>
