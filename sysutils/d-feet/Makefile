# $OpenBSD: Makefile,v 1.4 2010/07/01 20:24:55 ajacoutot Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.1.10
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
CATEGORIES=		sysutils x11

EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		https://hosted.fedoraproject.org/d-feet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://johnp.fedorapeople.org/downloads/d-feet/

MODULES=		lang/python

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::x11/dbus-python \
			::x11/gnome/py-gnome-desktop

USE_X11=		Yes

NO_REGRESS=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/d-feet

.include <bsd.port.mk>
