# $OpenBSD: Makefile,v 1.84 2014/07/16 08:20:01 ajacoutot Exp $

COMMENT=	pager/text-based web browser

DISTNAME=	w3m-0.5.3
REVISION=	3
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto curses gc>=3 m pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}

MODULES=	devel/gettext
LIB_DEPENDS=	devel/boehm-gc

FLAVORS=	image japanese
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_TEST=	Yes
USE_GROFF=	Yes

.if ${FLAVOR:Mimage}
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+=--with-imagelib=gtk2
WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png
WANTLIB += pthread-stubs xcb xcb-render xcb-shm
.else
CONFIGURE_ARGS+=--enable-image=no
.endif

.if ${FLAVOR:Mjapanese}
FULLPKGNAME=	ja-${PKGNAME}${FLAVOR_EXT:S/-japanese//}
CATEGORIES+=	japanese
CONFIGURE_ARGS+=--enable-japanese=E
DOCSRC=		${WRKSRC}/doc-jp
.else
CONFIGURE_ARGS+=--enable-m17n=ISO-8859-1
DOCSRC=		${WRKSRC}/doc
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	cd ${DOCSRC}; \
	find . -type f \! \( -name w3m.1 -or -path "*/CVS/*" \) -print0 | \
	xargs -0r -J % ${INSTALL_DATA} % ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
