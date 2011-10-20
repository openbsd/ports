# $OpenBSD: Makefile,v 1.38 2011/10/20 12:31:26 ajacoutot Exp $

# XXX could use brltty and brlapi (with python bindinds) -- not ported yet

COMMENT=		assistive screen reader

GNOME_PROJECT=		orca
GNOME_VERSION=		3.2.1
REVISION=		0

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS} \
			x11/gtk+3
RUN_DEPENDS=		x11/gnome/py-atspi>=2.2.0 \
			devel/py-xdg \
			x11/dbus-python \
			audio/speech-dispatcher \
			devel/liblouis

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_TOOLS= 	yelp

CONFIGURE_ENV=		DATADIRNAME=share

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples/orca/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/orca/espeechfactory.py

.include <bsd.port.mk>
