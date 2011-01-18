# $OpenBSD: Makefile,v 1.30 2011/01/18 19:11:06 landry Exp $

COMMENT=		easy GNOME menu editing tool

GNOME_PROJECT=		alacarte
GNOME_VERSION=		0.12.4
REVISION=		5

CATEGORIES=		x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gettext \
			x11/py-gtk2>=2.8.6 \
			gnome-panel-*|exo->0.6:x11/gnome/panel \
			x11/gnome/py-gnome

DESKTOP_FILES=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Alacarte/util.py

.include <bsd.port.mk>
