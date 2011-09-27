# $OpenBSD: Makefile,v 1.33 2011/09/27 12:52:11 ajacoutot Exp $

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.2.0

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/py-atspi>=2.2.0 \
			devel/py-xdg \
			x11/dbus-python

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			DATADIRNAME=share

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/orca/espeechfactory.py

.include <bsd.port.mk>
