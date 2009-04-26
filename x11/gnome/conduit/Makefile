# $OpenBSD: Makefile,v 1.17 2009/04/26 17:10:53 jasper Exp $

# XXX the following modules are commented in PLIST
# N800Module ===> needs HAL which we don't provide
# Network sync ===> needs avahi

COMMENT=		synchronization application for GNOME

GNOME_PROJECT=		conduit
GNOME_VERSION=		0.3.15
PKGNAME=		${DISTNAME}p12

HOMEPAGE=		http://www.conduit-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::audio/libgpod,-python \
			::devel/gettext \
			::devel/xdg-utils \
			::graphics/py-goocanvas \
			::textproc/py-vobject \
			::x11/dbus-python \
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
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	find ${WRKDIST} -name \*.py | \
		xargs perl -pi -e 's,/usr/bin/env python2.5,${MODPY_BIN},g;' \
			-e 's,/usr/bin/env python,${MODPY_BIN},g;' \
			-e 's,/usr/bin/python,${MODPY_BIN},g'
	${SUBST_CMD} ${WRKSRC}/conduit/conduit ${WRKSRC}/conduit/conduit.real \
		${WRKSRC}/tools/conduit-client ${WRKSRC}/conduit/gtkui/UI.py

.include <bsd.port.mk>
