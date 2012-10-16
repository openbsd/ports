# $OpenBSD: Makefile,v 1.2 2012/10/16 07:11:43 ajacoutot Exp $

PKG_ARCH=		*

COMMENT=		clock application for GNOME

GNOME_PROJECT=		gnome-clocks
GNOME_VERSION=		0.1.4
MODPY_EGG_VERSION=	${GNOME_VERSION}

HOMEPAGE=		https://live.gnome.org/GnomeClocks

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		devel/dconf \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		devel/py-distutils-extra

RUN_DEPENDS=		devel/libnotify \
			devel/py-gobject3 \
			graphics/clutter/clutter-gtk \
			x11/gnome/libgweather

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes
NO_REGRESS=		Yes

CONFIGURE_STYLE=	# empty

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gnome-clocks

.include <bsd.port.mk>
