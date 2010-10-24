# $OpenBSD: Makefile,v 1.28 2010/10/24 21:10:56 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	small and lightweight IDE

DISTNAME=	geany-0.19.1
REVISION=	0

CATEGORIES=	devel

HOMEPAGE=	http://www.geany.org/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

# GPL + Scintilla License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.geany.org/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-render xcb-render-util z


LIB_DEPENDS=	::x11/gtk+2
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
