# $OpenBSD: Makefile,v 1.10 2009/06/11 18:27:02 ajacoutot Exp $

COMMENT=		library providing su and sudo functionality

DISTNAME=		libgksu-2.0.7
PKGNAME=		${DISTNAME}p4
SHARED_LIBS=		gksu2		0.1	# .0.2
CATEGORIES=             sysutils

HOMEPAGE=		http://www.nongnu.org/gksu/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
		Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo \
		dbus-1 dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 kvm m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread util xml2 z

MASTER_SITES=		http://people.debian.org/~kov/gksu/

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2

LIB_DEPENDS=		gtop-2.0::devel/libgtop2 \
			glade-2.0::devel/libglade2 \
			startup-notification-1::devel/startup-notification \
			gnome-keyring::x11/gnome/keyring
RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

MODGCONF2_SCHEMAS_DIR=	libgksu

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gtk-doc="no"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	@perl -pi -e 's,/bin/su,/usr/bin/su,g' ${WRKSRC}/po/*.po
	${SUBST_CMD} ${WRKSRC}/libgksu/test-gksu.c

.include <bsd.port.mk>
