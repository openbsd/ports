# $OpenBSD: Makefile,v 1.22 2013/04/16 10:21:58 ajacoutot Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.3.3
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
CATEGORIES=		sysutils x11
REVISION=		0

HOMEPAGE=		http://live.gnome.org/DFeet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/d-feet/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	d-feet

NO_TEST=		Yes

pre-configure:
	perl -pi -e 's,/usr/share,${PREFIX}/share,g' ${WRKSRC}/d-feet

.include <bsd.port.mk>
