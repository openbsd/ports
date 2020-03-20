# $OpenBSD: Makefile,v 1.25 2020/03/20 16:44:29 naddy Exp $

COMMENT=	Equinox GTK+2 engine

V=		1.50
DISTNAME=	121881-equinox-${V}
PKGNAME=	gtk2-equinox-engine-${V}
REVISION=	8

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		140449-equinox-themes-${V}${EXTRACT_SUFX}

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Equinox+Gtk+Engine?content=121881

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
	find ${PREFIX}/share/themes/ -type f -name index.theme -exec \
		perl -pi -e 's,Equinox Evolution,Equinox_Evolution,g;' \
			 -e 's,Evolution ,Evolution_,g' {} +
	find ${PREFIX}/share/themes/ -type f \( -name \*.crx \
		-o -name README -o -name ChangeLog \) -delete

.include <bsd.port.mk>
