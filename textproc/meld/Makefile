# $OpenBSD: Makefile,v 1.26 2013/04/16 06:21:44 ajacoutot Exp $

COMMENT=	graphical diff and merge tool

GNOME_VERSION=	1.6.1
GNOME_PROJECT=	meld
REVISION=	0

CATEGORIES=	textproc x11

HOMEPAGE=	http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python \
		x11/gnome

RUN_DEPENDS=	x11/py-gtk2

MODGNOME_TOOLS= 	yelp
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

SUBST_VARS+=	MODPY_SITEPKG
CONFIGURE_STYLE=none
NO_TEST=	yes
MAKE_ENV=	PYTHON=${MODPY_BIN}

MODPY_ADJ_FILES=bin/meld

pre-configure:
	${SUBST_CMD} ${WRKSRC}/INSTALL

post-install:
	rmdir ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
