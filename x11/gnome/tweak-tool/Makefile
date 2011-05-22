# $OpenBSD: Makefile,v 1.3 2011/05/22 10:08:18 ajacoutot Exp $

COMMENT=	tweak hidden GTK/GNOME settings

GNOME_PROJECT=	gnome-tweak-tool
GNOME_VERSION=	3.0.4

CATEGORIES=	sysutils

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	x11/gnome \
		lang/python

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/gsettings-desktop-schemas \
		devel/gconf2 \
		devel/gettext \
		devel/py-gobject

MODPY_ADJ_FILES=gnome-tweak-tool

DESKTOP_FILES=		Yes

.include <bsd.port.mk>
