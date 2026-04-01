COMMENT =	gimp plugin for image reparation
CATEGORIES =	graphics

V =		3.0
GH_PROJECT =	resynthesizer
GH_ACCOUNT =	bootchk
GH_TAGNAME =	v$V
REVISION =	0

HOMEPAGE =	https://www.logarithmic.net/pfh/resynthesizer

PKGNAME =	gimp3-resynthesizer-plugin-$V

# GPLv3
PERMIT_PACKAGE = Yes

WANTLIB += babl-0.1 c gegl-0.4 gimp-3.0 glib-2.0 gobject-2.0 intl
WANTLIB += m

MODULES =	devel/meson

LIB_DEPENDS = gimp->=3:graphics/gimp/snapshot

GIMP3_PLUGINS = lib/gimp/3.0/plug-ins
SUBST_VARS +=	GIMP3_PLUGINS

.include <bsd.port.mk>
