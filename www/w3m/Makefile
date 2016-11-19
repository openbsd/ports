# $OpenBSD: Makefile,v 1.87 2016/11/19 12:06:06 ajacoutot Exp $

COMMENT=	pager/text-based web browser

DISTNAME=	w3m-0.5.3
REVISION=	4
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c crypto curses gc iconv intl m pthread ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}

BUILD_DEPENDS=	devel/gettext-tools

LIB_DEPENDS=	devel/boehm-gc devel/gettext

FLAVORS=	image japanese
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_TEST=	Yes

.if ${FLAVOR:Mimage}
LIB_DEPENDS+=	x11/gtk+2
CONFIGURE_ARGS+=--with-imagelib=gtk2
WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gdk_pixbuf_xlib-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 gtk-x11-2.0
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0
.else
CONFIGURE_ARGS+=--enable-image=no
.endif

.if ${FLAVOR:Mjapanese}
FULLPKGNAME=	ja-${PKGNAME}${FLAVOR_EXT:S/-japanese//}
CATEGORIES+=	japanese
CONFIGURE_ARGS+=--enable-japanese=U
DOCSRC=		${WRKSRC}/doc-jp
.else
DOCSRC=		${WRKSRC}/doc
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	cd ${DOCSRC}; \
	find . -type f \! \( -name w3m.1 -or -path "*/CVS/*" \) -print0 | \
	xargs -0r -J % ${INSTALL_DATA} % ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
