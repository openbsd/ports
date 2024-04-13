COMMENT=		modular session / policy manager for PipeWire

PW_PROJECT=		wireplumber
PW_VERSION=		0.5.1

SHARED_LIBS += wireplumber-0.5           0.0 # 0.5.1

WANTLIB += ${MODLUA_WANTLIB} c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += intl m pipewire-0.3

MODULES=		devel/meson \
			lang/lua \
			lang/python

MODLUA_VERSION=		5.4
MODPY_RUNDEP=		No

BUILD_DEPENDS=		devel/doxygen \
			devel/gettext,-tools \
			devel/gobject-introspection \
			textproc/py-lxml${MODPY_FLAVOR}

LIB_DEPENDS=		devel/glib2 \
			multimedia/pipewire/pipewire,-libs

# libintl
CONFIGURE_ENV +=	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=		-Dsystem-lua=true \
			-Delogind=disabled \
			-Dsystemd=disabled \
			-Dsystemd-user-service=false

# needs the breathe pyhton module
CONFIGURE_ARGS +=	-Ddoc=disabled

# needs sys/inotify.h (devel/libinotify)
CONFIGURE_ARGS +=	-Dtests=false

.include <bsd.port.mk>
