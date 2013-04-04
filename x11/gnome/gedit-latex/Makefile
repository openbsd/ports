# $OpenBSD: Makefile,v 1.8 2013/04/04 13:07:36 ajacoutot Exp $

COMMENT=	LaTeX plugin for Gedit

GNOME_PROJECT=	gedit-latex
GNOME_VERSION=	3.4.1
REVISION=	1

CATEGORIES=	editors print

HOMEPAGE=	https://live.gnome.org/Gedit/LaTeXPlugin

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python \
		devel/dconf

BUILD_DEPENDS=	devel/gettext \
		x11/gnome/gedit

RUN_DEPENDS=	devel/py-gobject3 \
		devel/gettext \
		textproc/rubber \
		x11/gnome/gedit

pre-configure:
	${SUBST_CMD} ${WRKSRC}/latex/latex/environment.py

.include <bsd.port.mk>
