# $OpenBSD: Makefile,v 1.12 2013/07/11 18:28:49 ajacoutot Exp $

COMMENT=	LaTeX plugin for Gedit

GNOME_PROJECT=	gedit-latex
GNOME_VERSION=	3.8.0

CATEGORIES=	editors print

HOMEPAGE=	https://live.gnome.org/Gedit/LaTeXPlugin

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python \
		devel/dconf

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/gettext \
		x11/gnome/gedit

RUN_DEPENDS=	devel/py-gobject3${MODPY_FLAVOR} \
		devel/gettext \
		textproc/rubber \
		x11/gnome/gedit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/latex/latex/environment.py

.include <bsd.port.mk>
