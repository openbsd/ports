# $OpenBSD: Makefile,v 1.38 2011/09/19 07:44:58 ajacoutot Exp $

COMMENT=		easy GNOME menu editing tool

GNOME_PROJECT=		alacarte
GNOME_VERSION=		0.12.4
REVISION=		10

CATEGORIES=		x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tar.bz2

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/gettext \
			x11/py-gtk2>=2.8.6 \
			gnome-panel-*|exo->0.6:x11/gnome/panel

# should be taken care of by the gnome-panel dependency, but our port
# can use exo instead for XFCE users
BUILD_DEPENDS+=		x11/gnome/menus

MODGNOME_DESKTOP_FILE=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Alacarte/util.py

.include <bsd.port.mk>
