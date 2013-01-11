# $OpenBSD: Makefile,v 1.19 2013/01/11 16:47:28 ajacoutot Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.3.2
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
CATEGORIES=		sysutils x11

HOMEPAGE=		http://live.gnome.org/DFeet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/d-feet/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.xz

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-gobject3 \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	d-feet

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,/usr/share,${PREFIX}/share,g' ${WRKSRC}/d-feet

.include <bsd.port.mk>
