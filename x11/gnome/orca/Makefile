# $OpenBSD: Makefile,v 1.29 2011/09/12 12:04:17 jasper Exp $

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.1.4

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/py-atspi \
			x11/py-gtk2 \
			devel/py-xdg \
			x11/dbus-python

DESKTOP_FILES=		Yes
MODGNOME_HELP_FILES=	Yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/orca/espeechfactory.py

.include <bsd.port.mk>
