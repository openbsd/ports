COMMENT=		services and D-Bus APIs to access UPnP and DLNA devices

GNOME_PROJECT=		dLeyna
GNOME_VERSION=		0.8.2
PKGNAME=		dleyna-${GNOME_VERSION}

SHARED_LIBS += dleyna-core-1.0           1.1 # 6.0.0
SHARED_LIBS += dleyna-renderer-1.0       1.1 # 1.0.3
SHARED_LIBS += dleyna-server-1.0         1.1 # 1.0.3

CATEGORIES=		net multimedia

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# override gnome MODULE
MASTER_SITES=		https://gitlab.gnome.org/World/dLeyna/-/archive/v${GNOME_VERSION}/
EXTRACT_SUFX=		.tar.gz
WRKDIST=		${WRKDIR}/dLeyna-v${GNOME_VERSION}-9444b8eb9e48a3985340c7f7e0d3a63d2b352302

# LGPLv2.1
PERMIT_PACKAGE=		Yes

WANTLIB += c gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gssdp-1.6
WANTLIB += gupnp-1.6 gupnp-av-1.0 gupnp-dlna-2.0 m soup-3.0 xml2

MODULES=		devel/meson \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/epoll-shim \
			textproc/py-docutils${MODPY_FLAVOR} \
			textproc/py-sphinx${MODPY_FLAVOR}

LIB_DEPENDS=		net/gupnp/core \
			net/gupnp/av \
			net/gupnp/dlna

RUN_DEPENDS=		devel/py-gobject3${MODPY_FLAVOR} \
			x11/dbus-python${MODPY_FLAVOR}

MODGNOME_CPPFLAGS=	-I${LOCALBASE}/include/libepoll-shim

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dleyna
	mv ${WRKINST}/etc/dleyna-{renderer,server}-service.conf \
		${PREFIX}/share/examples/dleyna/

.include <bsd.port.mk>
