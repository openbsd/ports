# $OpenBSD: Makefile,v 1.32 2011/06/08 17:38:01 rpointel Exp $

COMMENT=		easy GNOME menu editing tool

GNOME_PROJECT=		alacarte
GNOME_VERSION=		0.12.4
REVISION=		7

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
			gnome-panel-*|exo->0.6:x11/gnome/panel

DESKTOP_FILES=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Alacarte/util.py

.include <bsd.port.mk>
