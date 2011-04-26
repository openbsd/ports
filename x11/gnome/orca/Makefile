# $OpenBSD: Makefile,v 1.26 2011/04/26 18:39:37 ajacoutot Exp $

COMMENT=		assistive technology for people with visual impairments

GNOME_PROJECT=		orca
GNOME_VERSION=		2.32.1

REVISION=		1

HOMEPAGE=		http://live.gnome.org/Orca

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		x11/gnome/py-gnome-desktop \
			x11/gnome/mag \
			x11/gnome/py-atspi \
			x11/gnome/speech \
			x11/dbus-python \
			devel/py-xdg

DESKTOP_FILES=		Yes

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
USE_GROFF =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/orca/espeechfactory.py

.include <bsd.port.mk>
