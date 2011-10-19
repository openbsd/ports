# $OpenBSD: Makefile,v 1.3 2011/10/19 05:37:04 ajacoutot Exp $

COMMENT=	LaTeX plugin for Gedit

GNOME_PROJECT=	gedit-latex
GNOME_VERSION=	3.2.1

CATEGORIES=	editors print

HOMEPAGE=	https://live.gnome.org/Gedit/LaTeXPlugin

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

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
