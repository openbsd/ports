# $OpenBSD: Makefile,v 1.24 2014/01/09 13:31:31 ajacoutot Exp $

COMMENT=		GTD organizer for GNOME

MODPY_EGG_VERSION=	0.3.1
DISTNAME=		gtg-${MODPY_EGG_VERSION}

CATEGORIES=		productivity

HOMEPAGE=		http://gtgnome.net/

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		https://launchpad.net/gtg/trunk/${MODPY_EGG_VERSION}/+download/

MODULES=		lang/python

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-configobj \
			devel/py-dateutil \
			devel/py-liblarch>=2.1.0 \
			devel/py-notify \
			devel/py-suds \
			devel/py-xdg \
			x11/dbus-python \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	GTG/gtg.py gtg

NO_TEST=		Yes

pre-configure:
	perl -pi -e "s,share/man,man,g" ${WRKSRC}/setup.py

.include <bsd.port.mk>
