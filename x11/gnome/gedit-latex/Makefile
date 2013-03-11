# $OpenBSD: Makefile,v 1.7 2013/03/11 11:46:10 espie Exp $

COMMENT=	LaTeX plugin for Gedit

GNOME_PROJECT=	gedit-latex
GNOME_VERSION=	3.4.1
REVISION=	0

CATEGORIES=	editors print

HOMEPAGE=	https://live.gnome.org/Gedit/LaTeXPlugin

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	x11/gnome \
		lang/python \
		devel/dconf

BUILD_DEPENDS=	devel/gettext \
		x11/gnome/gedit>=3.2.0
RUN_DEPENDS=	devel/gettext \
		textproc/rubber \
		x11/gnome/gedit>=3.2.0

pre-configure:
	${SUBST_CMD} ${WRKSRC}/latex/latex/environment.py

.include <bsd.port.mk>
