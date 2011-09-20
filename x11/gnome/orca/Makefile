# $OpenBSD: Makefile,v 1.32 2011/09/20 20:52:46 jasper Exp $

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.1.4
REVISION=	0

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

MODGNOME_DESKTOP_FILE=		Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/orca/espeechfactory.py

.include <bsd.port.mk>
