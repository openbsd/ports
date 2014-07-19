# $OpenBSD: Makefile,v 1.39 2014/07/19 07:10:51 ajacoutot Exp $

COMMENT=	graphical diff and merge tool

GNOME_VERSION=	1.8.6
GNOME_PROJECT=	meld

CATEGORIES=	textproc x11

HOMEPAGE=	http://meld.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python \
		x11/gnome

MODGNOME_TOOLS += desktop-file-utils gtk-update-icon-cache shared-mime-info yelp

MODPY_ADJ_FILES=	bin/meld

RUN_DEPENDS=	x11/dbus-python \
		x11/py-gtk2

NO_TEST=	yes

# don't inherit python configure
CONFIGURE_STYLE=none

MAKE_ENV=	PYTHON=${MODPY_BIN}
MAKE_FLAGS=	libdir=${MODPY_SITEPKG} \
		localstatedir=${VARBASE}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/INSTALL

post-install:
	rmdir ${PREFIX}/share/pixmaps

.include <bsd.port.mk>
