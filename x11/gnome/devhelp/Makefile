# $OpenBSD: Makefile,v 1.2 2007/07/05 22:50:10 jasper Exp $

COMMENT=		API documentation browser for GNOME

GNOME_PROJECT=		devhelp
GNOME_VERSION=		0.14
PKGNAME=		${DISTNAME}p0
SHARED_LIBS +=	devhelp-1             0.0        # .0.0
CATEGORIES=		textproc

HOMEPAGE=		http://developer.imendio.com/projects/devhelp/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 SM X11 XRes Xau Xcursor Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m nspr4 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 plc4 plds4 png pthread \
		xml2 z

# XXX: To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/${GNOME_PROJECT}/${GNOME_VERSION}/}

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::devel/xulrunner,-devel \
			:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			glade-2.0::devel/libglade2 \
			wnck-1::devel/libwnck \
			startup-notification-1::devel/startup-notification \
			xulrunner/gtkembedmoz,xulrunner/xpcom::devel/xulrunner,-main

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/devhelp/ \
			--disable-schemas-install \
			--with-gecko=xulrunner
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
