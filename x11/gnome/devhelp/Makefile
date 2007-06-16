# $OpenBSD: Makefile,v 1.1.1.1 2007/06/16 17:41:24 jasper Exp $

COMMENT=		API documentation browser for GNOME

DISTNAME=		devhelp-0.14
SHARED_LIBS +=	devhelp-1             0.0        # .0.0
CATEGORIES=		x11/gnome textproc

HOMEPAGE=		http://developer.imendio.com/projects/devhelp

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


MASTER_SITES=		${MASTER_SITE_GNOME:=sources/devhelp/0.14/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			lang/python

BUILD_DEPENDS=		::devel/xulrunner,-devel \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:gnome-doc-utils-*:x11/gnome/doc-utils
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			glade-2.0::devel/libglade2 \
			wnck-1::devel/libwnck \
			startup-notification-1::devel/startup-notification \
			xulrunner/gtkembedmoz,xulrunner/xpcom::devel/xulrunner,-main
RUN_DEPENDS=		::devel/desktop-file-utils

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/devhelp/ \
			--disable-schemas-install \
			--with-gecko=xulrunner
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
