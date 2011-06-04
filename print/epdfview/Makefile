# $OpenBSD: Makefile,v 1.22 2011/06/04 19:05:23 kili Exp $

COMMENT=	lightweight PDF document viewer

DISTNAME=	epdfview-0.1.7
REVISION=	8
CATEGORIES=	print
HOMEPAGE=	http://trac.emma-soft.com/epdfview/

MAINTAINER=	Brynet <brynet@gmail.com>

MASTER_SITES=	${HOMEPAGE}chrome/site/releases/

EXTRACT_SUFX=	.tar.bz2

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB+= GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB+= Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo drm expat
WANTLIB+= fontconfig freetype gdk-x11-2.0>=0.14 gdk_pixbuf-2.0>=0.14 gio-2.0
WANTLIB+= glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0>=0.14 m
WANTLIB+= pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 png poppler>=10
WANTLIB+= poppler-glib>=3 pthread pthread-stubs stdc++ xcb xcb-render
WANTLIB+= xcb-shm z

MODULES=	devel/gettext

RUN_DEPENDS=	devel/desktop-file-utils
LIB_DEPENDS=	x11/gtk+2 \
		print/poppler>=0.16

CONFIGURE_STYLE=gnu

USE_GMAKE=	Yes

FLAVORS=	cups
FLAVOR?=

.if ${FLAVOR:L:Mcups}
WANTLIB+=		asn1 crypto cups>=3 gssapi krb5 ssl
LIB_DEPENDS+=		print/cups>=1.2
CONFIGURE_ARGS+=	--with-cups
.else
CONFIGURE_ARGS+=	--without-cups
.endif

ICONDIR=$(PREFIX)/share/icons/hicolor

post-install:
	${INSTALL_DATA_DIR} ${ICONDIR}/{24x24,32x32,48x48}/apps
	for i in 24 32 48; do \
		${INSTALL_DATA} ${WRKSRC}/data/icon_epdfview-$${i}.png \
		  ${ICONDIR}/$${i}x$${i}/apps/epdfview.png; \
	done

.include <bsd.port.mk>
