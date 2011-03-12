# $OpenBSD: Makefile,v 1.78 2011/03/12 23:20:16 sthen Exp $

COMMENT=	pager/text-based web browser

DISTNAME=	w3m-0.5.3
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto curses gc>=3 m pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}

MODULES=	devel/gettext
LIB_DEPENDS=	devel/boehm-gc

FLAVORS=	image japanese
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-browser=/usr/bin/lynx \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_REGRESS=	Yes
USE_GROFF=	Yes

.if ${FLAVOR:L:Mimage}
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+=--with-imagelib=gtk2
WANTLIB += X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png Xcomposite Xdamage gio-2.0 pixman-1
WANTLIB += pthread-stubs xcb gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0
WANTLIB += gdk-x11-2.0>=1000 gtk-x11-2.0>=1000
WANTLIB += GL Xxf86vm drm gthread-2.0 xcb-render xcb-shm
.else
CONFIGURE_ARGS+=--enable-image=no
.endif

.if ${FLAVOR:L:Mjapanese}
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
