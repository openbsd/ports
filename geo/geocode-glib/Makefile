COMMENT-main=		helper library for geocoding services
COMMENT-icons=		common icons for geocode-glib

GNOME_VERSION=		3.26.4
GNOME_PROJECT=		geocode-glib

PKGNAME-main=		${GNOME_PROJECT}-${GNOME_VERSION}
FULLPKGNAME-icons=	${GNOME_PROJECT}-icons-${GNOME_VERSION}
FULLPKGPATH-icons=	geo/geocode-glib,-icons
REVISION-icons=		1

SHARED_LIBS += geocode-glib              0.1 # 0.0.0
SHARED_LIBS += geocode-glib-2            0.0 # 0.0.0

CATEGORIES=		geo

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2
PERMIT_PACKAGE=		Yes

MULTI_PACKAGES=		-main -icons
DEBUG_PACKAGES=		-main

FLAVORS=		soup3
FLAVOR?=

MODULES=		devel/meson \
			x11/gnome

MODGNOME_TOOLS=		gobject-introspection gtk-update-icon-cache

CONFIGURE_ARGS=		-Denable-gtk-doc=false \
			-Denable-installed-tests=false

WANTLIB-main += gio-2.0 glib-2.0 gobject-2.0 intl json-glib-1.0 m

LIB_DEPENDS-main=	devel/json-glib

.if ${FLAVOR:Msoup3}
FULLPKGNAME-main=	${GNOME_PROJECT}2-${GNOME_VERSION}
FULLPKGPATH-main=	geo/geocode-glib,-main,soup3
LIB_DEPENDS-main +=	devel/libsoup3
WANTLIB-main += soup-3.0
CONFIGURE_ARGS +=	-Dsoup2=false
.else
LIB_DEPENDS-main +=	devel/libsoup
WANTLIB-main += soup-2.4
.endif
REVISION-main=		1

RUN_DEPENDS-main=	geo/geocode-glib,-icons

WANTLIB-icons=		# empty
LIB_DEPENDS-icons=	# empty

PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
