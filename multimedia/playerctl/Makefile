COMMENT =	MPRIS command-line controller and library

DIST_TUPLE =		github	altdesktop	playerctl	v2.4.1	.
REVISION =		0

SHARED_LIBS =		playerctl	0.0	# 2.4.1

CATEGORIES =		multimedia

# LGPL3+
PERMIT_PACKAGE =	Yes
WANTLIB =		c gio-2.0 glib-2.0 gobject-2.0

MODULES =		devel/meson

BUILD_DEPENDS =		devel/gobject-introspection \
			textproc/gtk-doc
LIB_DEPENDS =		devel/glib2

CONFIGURE_ARGS =	-Dbash-completions=true \
			-Dzsh-completions=true

NO_TEST =		Yes

.include <bsd.port.mk>
