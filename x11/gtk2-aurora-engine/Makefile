# $OpenBSD: Makefile,v 1.1.1.1 2009/12/03 12:46:42 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	Aurora GTK+2 engine

V=		1.5.1
DISTNAME=	56438-aurora-${V}
PKGNAME=	gtk2-aurora-engine-${V}

EXTRACT_SUFX=	.tar.bz2

CATEGORIES=	x11

HOMEPAGE=	http://gnome-look.org/content/show.php/Aurora+Gtk+Engine?content=56438

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://gnome-look.org/CONTENT/content-files/

USE_LIBTOOL=	Yes
USE_X11=	Yes

MODULES=	devel/gettext

LIBTOOL_FLAGS=	--tag=disable-static

LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-static \
		--enable-animation

_DNAME=		aurora-gtk-engine-${V:C/^([0-9]+\.[0-9]+).*/\1/}
WRKDIST=	${WRKDIR}/${_DNAME:S/-gtk-engine//}

post-extract:
	cd ${WRKDIR} && \
		tar xzf ${_DNAME}.tar.gz && \
		tar xjf Aurora${EXTRACT_SUFX}
	chmod +x ${WRKSRC}/install-sh
	find ${WRKDIR} -name '*\~' -exec rm {} \;

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/Aurora/gtk-2.0/
	cp -R ${WRKDIR}/Aurora \
		${PREFIX}/share/themes/
	chown -R ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/themes/Aurora/

.include <bsd.port.mk>
