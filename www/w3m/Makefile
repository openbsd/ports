# $OpenBSD: Makefile,v 1.60 2006/02/10 18:54:58 sturm Exp $

COMMENT=	"pager/text-based web browser"

DISTNAME=	w3m-0.5.1
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www
HOMEPAGE=	http://w3m.sourceforge.net/

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD-like
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto curses m ssl z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=w3m/}
MASTER_SITES0=	http://www2u.biglobe.ne.jp/~hsaka/w3m/patch/

MODULES=	devel/gettext
LIB_DEPENDS=	gc.1::devel/boehm-gc

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
LIB_DEPENDS+=	gdk_pixbuf.2,gdk_pixbuf_xlib.2::graphics/gdk-pixbuf
CONFIGURE_ARGS+=--with-imagelib=gdk-pixbuf
DOCS+=		README.img
WANTLIB+=	X11 Xext Xi gdk glib gmodule gtk jpeg png tiff
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
