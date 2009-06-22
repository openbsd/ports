# $OpenBSD: Makefile,v 1.69 2009/06/22 10:43:58 sthen Exp $

COMMENT=	pager/text-based web browser

DISTNAME=	w3m-0.5.2
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}

MODULES=	devel/gettext
LIB_DEPENDS=	gc.>=3::devel/boehm-gc
WANTLIB=	c crypto curses m pthread ssl z

FLAVORS=	image japanese
FLAVOR?=

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-xface \
		--with-browser=/usr/bin/lynx \
		--with-termlib=curses \
		--with-gc=${LOCALBASE}

NO_REGRESS=	Yes

DOCS=	FAQ.html HISTORY MANUAL.html README README.dict README.func \
	README.m17n README.mouse README.pre_form README.tab STORY.html \
	keymap.default keymap.lynx menu.default menu.submenu

.if ${FLAVOR:L:Mimage}
USE_X11=	Yes
LIB_DEPENDS+=	gdk-x11-2.0.>=1000,gdk_pixbuf-2.0.>=1000,gdk_pixbuf_xlib-2.0.>=1000,gtk-x11-2.0.>=1000::x11/gtk+2
CONFIGURE_ARGS+=--with-imagelib=gtk2
DOCS+=		README.img
WANTLIB+=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 cairo expat fontconfig freetype glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 png Xcomposite Xdamage gio-2.0 pixman-1
.else
CONFIGURE_ARGS+=--enable-image=no
.endif

.if ${FLAVOR:L:Mjapanese}
FULLPKGNAME=	ja-${PKGNAME}${FLAVOR_EXT:S/-japanese//}
CATEGORIES+=	japanese
CONFIGURE_ARGS+=--enable-japanese=E
DOCS+=		README.SSL README.cookie README.keymap \
		README.mailcap README.menu
DOCSRC=		${WRKSRC}/doc-jp
.else
CONFIGURE_ARGS+=--enable-m17n=ISO-8859-1
DOCSRC=		${WRKSRC}/doc
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/w3m
	cd ${DOCSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/w3m

.include <bsd.port.mk>
