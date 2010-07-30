# $OpenBSD: Makefile,v 1.2 2010/07/30 11:29:44 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Equinox GTK+2 engine

V=		1.1
DISTNAME=	121881-equinox-${V}
PKGNAME=	gtk2-equinox-engine-${V}

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Equinox+Gtk+Engine?content=121881

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb xcb-render xcb-render-util
WANTLIB += z gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

LIBTOOL_FLAGS=	--tag=disable-static

LIB_DEPENDS=	::x11/gtk+2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--enable-animation

_DNAME=		equinox-gtk-engine-${V:C/^([0-9]+\.[0-9]+).*/\1/}
WRKDIST=	${WRKDIR}/${_DNAME:S/-gtk-engine//}

post-extract:
	cd ${WRKDIR} && \
		tar xzf equinox-gtk-engine.tar.gz && \
		tar xzf equinox-themes.tar.gz -C ${WRKSRC}
	mv ${WRKSRC}/"Equinox Glass" ${WRKSRC}/EquinoxGlass
	mv ${WRKSRC}/"Equinox Wide" ${WRKSRC}/EquinoxWide
	chmod +x ${WRKSRC}/install-sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/Equinox/gtk-2.0/
	cp -R ${WRKSRC}/Equinox{,Glass,Wide} \
		${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/themes/Equinox{,Glass,Wide}
	find ${PREFIX}/share/themes/ -type f | \
		xargs perl -pi -e 's,Equinox Glass,EquinoxGlass,g;' \
			-e 's,Equinox Wide,EquinoxWide,g'
	find ${PREFIX} -name \*.orig | xargs rm

.include <bsd.port.mk>
