# $OpenBSD: Makefile,v 1.18 2011/12/03 23:04:37 ajacoutot Exp $

COMMENT=		GTD organizer for GNOME

GNOME_PROJECT=		gtg
GNOME_VERSION=		0.2.4
REVISION=		3

CATEGORIES=		productivity

HOMEPAGE=		http://gtg.fritalk.com/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://edge.launchpad.net/gtg/${VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/${VERSION}/+download/
EXTRACT_SUFX=		.tar.gz

MODULES=		lang/python \
			x11/gnome

RUN_DEPENDS=		devel/py-configobj \
			devel/py-simplejson \
			devel/py-xdg \
			x11/dbus-python \
			x11/py-gtk2
BUILD_DEPENDS=		x11/py-gtk2

MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

USE_GROFF=		Yes
NO_REGRESS=		Yes

SUBST_VARS=		VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/gtg \
			${WRKSRC}/GTG/__init__.py \
			${WRKSRC}/GTG/gtg.py

.include <bsd.port.mk>
