# $OpenBSD: Makefile,v 1.14 2011/11/14 19:16:51 ajacoutot Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.1.14
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

BUILD_DEPENDS=		x11/py-gtk2
RUN_DEPENDS=		devel/desktop-file-utils \
			x11/dbus-python \
			x11/py-gtk2

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/d-feet

.include <bsd.port.mk>
