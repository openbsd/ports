# $OpenBSD: Makefile,v 1.22 2009/11/28 15:39:16 ajacoutot Exp $

COMMENT=		easy GNOME menu editing tool

GNOME_PROJECT=		alacarte
GNOME_VERSION=		0.12.4
PKGNAME=		${DISTNAME}p0

CATEGORIES=		x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		lang/python \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::devel/gettext \
			:py-gtk2->=2.8.6:x11/py-gtk2 \
			:gnome-menus-*:x11/gnome/menus \
			:py-gnome-*:x11/gnome/py-gnome

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Alacarte/util.py

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
