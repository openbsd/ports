# $OpenBSD: Makefile,v 1.22 2009/09/04 11:38:31 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	small and lightweight IDE

DISTNAME=	geany-0.18
PKGNAME=	${DISTNAME}
CATEGORIES=	devel

HOMEPAGE=	http://www.geany.org

MAINTAINER=	Jonathan Armani <dbd@asystant.net>

# GPL + Scintilla License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.geany.org/
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
		pango-1.0 pangoft2-1.0 pangocairo-1.0 pixman-1 \
		pthread-stubs xcb

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
