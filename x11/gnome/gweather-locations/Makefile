COMMENT=		location and timezone database

GNOME_PROJECT=		gweather-locations
GNOME_VERSION=		2026.1

# GPLv2
PERMIT_PACKAGE=		Yes

SITES=			https://gitlab.gnome.org/GNOME/gweather-locations/-/archive/${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz

MODULES=		devel/meson \
			x11/gnome

# xmllint
BUILD_DEPENDS +=	textproc/libxml

.include <bsd.port.mk>
