# $OpenBSD: Makefile,v 1.12 2014/04/01 14:52:10 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Aurora GTK+2 engine

V=		1.5.1
DISTNAME=	56438-aurora-${V}
PKGNAME=	gtk2-aurora-engine-${V}
REVISION=	4

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Aurora+Gtk+Engine?content=56438

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/


MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 gdk_pixbuf-2.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z gdk-x11-2.0 gtk-x11-2.0
WANTLIB += GL Xxf86vm drm ffi gthread-2.0 stdc++ xcb-render xcb-shm

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

_DNAME=		aurora-gtk-engine-${V:C/^([0-9]+\.[0-9]+).*/\1/}
WRKDIST=	${WRKDIR}/${_DNAME:S/-gtk-engine//}

post-extract:
	cd ${WRKDIR} && \
		tar xzf ${_DNAME}.tar.gz && \
		tar xjf Aurora${EXTRACT_SUFX}
	chmod +x ${WRKSRC}/install-sh
	find ${WRKDIR} -name '*\~' -exec rm {} \;

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/Aurora/gtk-2.0/
	cp -R ${WRKDIR}/Aurora \
		${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/themes/Aurora/

.include <bsd.port.mk>
