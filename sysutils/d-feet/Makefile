# $OpenBSD: Makefile,v 1.7 2010/09/16 08:19:50 sthen Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.1.12
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
REVISION =		1
CATEGORIES=		sysutils x11

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://live.gnome.org/DFeet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/d-feet/${MODPY_EGG_VERSION:C/^([0-9]+\.[0-9]+).*/\1/}/}

MODULES=		lang/python
MODPY_SETUPTOOLS=	Yes

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/dbus-python \
			::x11/gnome/py-gnome-desktop

USE_X11=		Yes

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/d-feet

.include <bsd.port.mk>
