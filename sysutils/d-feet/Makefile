# $OpenBSD: Makefile,v 1.2 2009/03/28 18:12:50 naddy Exp $

COMMENT=		dbus debugger

MODPY_EGG_VERSION=	0.1.8
DISTNAME=		d-feet-${MODPY_EGG_VERSION}
PKGNAME=		${DISTNAME}p0
CATEGORIES=		sysutils x11

HOMEPAGE=		https://hosted.fedoraproject.org/d-feet/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://johnp.fedorapeople.org/

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
