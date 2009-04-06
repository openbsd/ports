# $OpenBSD: Makefile,v 1.30 2009/04/06 10:09:06 ajacoutot Exp $

COMMENT=		spreadsheet application for GNOME

GNOME_PROJECT=		gnumeric
GNOME_VERSION=		1.8.4
PKGNAME=		${DISTNAME}p2

SHARED_LIBS +=	spreadsheet     0.0
CATEGORIES=    		math

HOMEPAGE=		http://www.gnome.org/projects/gnumeric/

# GPLv2
# Some tools: LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 bonobo-2 bonobo-activation \
		bonoboui-2 bz2 c cairo crypto dbus-1 dbus-glib-1 \
		expat fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre perl pixman-1 png popt pthread ssl util z

MODULES=		devel/gettext \
			x11/gnome

LIB_DEPENDS=		art_lgpl_2.>=5.19::graphics/libart \
			glade-2.0.>=0.8::devel/libglade2 \
			gnomeui-2.>=1800::x11/gnome/libgnomeui \
			goffice-0.6::devel/goffice \
			gsf-1.>=114.8,gsf-gnome-1.>=114.8::devel/libgsf,-gnome \
			xml2.>=9.5::textproc/libxml

USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS=		--with-gnome \
			--without-gda \
			--without-gb \
			--without-psiconv \
			--without-paradox \
			--without-long-double \
			--without-python \
			--with-gconf-schema-file-dir="${LOCALBASE}/share/schemas/gnumeric"
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

SUBST_VARS=		VERSION

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
