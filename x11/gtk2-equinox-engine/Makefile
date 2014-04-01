# $OpenBSD: Makefile,v 1.13 2014/04/01 14:52:10 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Equinox GTK+2 engine

V=		1.50
DISTNAME=	121881-equinox-${V}
PKGNAME=	gtk2-equinox-engine-${V}
REVISION=	2

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		140449-equinox-themes-${V}${EXTRACT_SUFX}

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Equinox+Gtk+Engine?content=121881

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-shm
WANTLIB += z ffi stdc++

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/


MODULES=	devel/gettext

LIB_DEPENDS=	x11/gtk+2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

_DNAME=		equinox-gtk-engine-${V:C/^([0-9]+\.[0-9]+).*/\1/}
WRKDIST=	${WRKDIR}/${_DNAME:S/-gtk-engine//}

post-extract:
	cd ${WRKDIR} && \
		for i in Equinox*; do mv "$$i" $$(echo "$$i" | sed -e 's, ,_,g'); done

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/Equinox_Evolution* ${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/themes/Equinox_Evolution*
	find ${PREFIX}/share/themes/ -type f -name index.theme | \
		xargs perl -pi -e 's,Equinox Evolution,Equinox_Evolution,g;' \
			 -e 's,Evolution ,Evolution_,g'
	find ${PREFIX}/share/themes/ -type f -name \*.crx \
		-or -name README -or -name ChangeLog | xargs rm

.include <bsd.port.mk>
