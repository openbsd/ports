# $OpenBSD: Makefile,v 1.16 2011/12/29 09:10:59 ajacoutot Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.1.14
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
CATEGORIES=		sysutils x11
REVISION=		1

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

BUILD_DEPENDS=		x11/py-gtk2
RUN_DEPENDS=		devel/desktop-file-utils \
			x11/dbus-python \
			x11/py-gtk2 \
			x11/gtk+2,-guic

MODPY_ADJ_FILES=	d-feet

NO_REGRESS=		Yes

pre-configure:
	perl -pi -e 's,/usr/share,${PREFIX}/share,g' ${WRKSRC}/d-feet

.include <bsd.port.mk>
