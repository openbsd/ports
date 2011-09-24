# $OpenBSD: Makefile,v 1.33 2011/09/24 12:11:38 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	plugins and utilities for seahorse

GNOME_PROJECT=	seahorse-plugins
GNOME_VERSION=	2.91.6
EXTRACT_SUFX=	.tar.bz2

REVISION=	4

# XXX until we have a stable 3.X release
MASTER_SITES=	http://distfiles.bsdfrog.org/

CATEGORIES=	security

HOMEPAGE=	http://projects.gnome.org/seahorse/

# GPLv2/GFDLv1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	x11/gnome/libcryptui \
		x11/gnome/nautilus

RUN_DEPENDS=	misc/shared-mime-info>=0.21

# technically not needed but makes more sense and the desktop file needs
# an icon from seahorse itself
RUN_DEPENDS +=	x11/gnome/seahorse>=3.1.92

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

MODGNOME_TOOLS=		yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGCONF2_SCHEMAS_DIR=	seahorse-plugins

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_ARGS=	--disable-static \
		--disable-update-mime-database \
		--disable-cpp-rtti \
		--disable-applet \
		--with-gtk=3.0
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

# the plugin needs a gecko epiphany, ours uses webkit
CONFIGURE_ARGS+= --disable-epiphany

# XXX gedit>=3 not supported yet
#BUILD_DEPENDS=	x11/gnome/gedit
CONFIGURE_ARGS += --disable-gedit

.include <bsd.port.mk>
