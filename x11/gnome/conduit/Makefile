# $OpenBSD: Makefile,v 1.8 2009/01/02 13:07:37 djm Exp $

# XXX the following modules are commented in PLIST
# iPodModule ===> needs py-gpod which we don't provide
# N800Module ===> needs HAL which we don't provide

COMMENT=		synchronization application for GNOME

GNOME_PROJECT=		conduit
GNOME_VERSION=		0.3.15
PKGNAME=		${DISTNAME}p5

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		::x11/gnome/doc-utils \
			${RUN_DEPENDS}
# XXX needs avahi for network sync
RUN_DEPENDS=		::devel/gettext \
			::devel/xdg-utils \
			::graphics/py-goocanvas \
			::textproc/py-vobject \
			::x11/dbus-python \
			::textproc/rarian \
			::multimedia/gstreamer-0.10/py-gstreamer

USE_X11=		Yes
MODGNOME_HELP_FILES=	Yes
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+= 	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/conduit \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--enable-totem-plugin \
			--with-totem-plugin-dir="${LOCALBASE}/lib/totem/plugins/" \
# This currently doesn't install anything.
CONFIGURE_ARGS+=	--disable-nautilus-extension \
			--disable-eog-plugin

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

pre-configure:
	find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python2.5,${MODPY_BIN},g;' \
			-e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'
	${SUBST_CMD} ${WRKSRC}/conduit/conduit ${WRKSRC}/conduit/conduit.real \
		${WRKSRC}/tools/conduit-client ${WRKSRC}/conduit/gtkui/UI.py

.include <bsd.port.mk>
