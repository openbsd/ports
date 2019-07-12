# $OpenBSD: Makefile,v 1.33 2019/07/12 20:48:58 sthen Exp $

COMMENT=		GTD organizer for GNOME

MODPY_EGG_VERSION=	0.3.1
DISTNAME=		gtg-${MODPY_EGG_VERSION}
REVISION=		3

CATEGORIES=		productivity

HOMEPAGE=		http://gtgnome.net/

# GPLv3+
PERMIT_PACKAGE=	Yes

MASTER_SITES=		https://launchpad.net/gtg/${MODPY_EGG_VERSION:R}/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python

BUILD_DEPENDS=		devel/gettext,-tools

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-dateutil \
			devel/py-liblarch>=2.1.0 \
			devel/py-notify \
			devel/py-suds \
			devel/py-xdg \
			x11/dbus-python \
			x11/gtk+3,-guic

MODPY_ADJ_FILES=	GTG/gtg.py gtg

NO_TEST=		Yes

pre-configure:
	sed -i "s,share/man,man,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
