# $OpenBSD: Makefile,v 1.24 2020/03/20 16:44:29 naddy Exp $

COMMENT=	Aurora GTK+2 engine

V=		1.5.1
DISTNAME=	56438-aurora-${V}
PKGNAME=	gtk2-aurora-engine-${V}
REVISION=	10

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Aurora+Gtk+Engine?content=56438

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm expat ffi
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB += gtk-x11-2.0 harfbuzz iconv intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread ${COMPILER_LIBCXX} xcb
WANTLIB += xcb-render xcb-shm z fribidi

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/

LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE= gnu

_DNAME=		aurora-gtk-engine-${V:C/^([0-9]+\.[0-9]+).*/\1/}
WRKDIST=	${WRKDIR}/${_DNAME:S/-gtk-engine//}

post-extract:
	cd ${WRKDIR} && \
		tar xzf ${_DNAME}.tar.gz && \
		tar xjf Aurora${EXTRACT_SUFX}
	chmod +x ${WRKSRC}/install-sh
	find ${WRKDIR} -name '*\~' -delete

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/Aurora/gtk-2.0/
	cp -R ${WRKDIR}/Aurora \
		${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/themes/Aurora/

.include <bsd.port.mk>
