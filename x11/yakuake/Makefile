# $OpenBSD: Makefile,v 1.22 2015/06/26 09:19:24 ajacoutot Exp $

COMMENT=	yet another kuake KDE terminal emulator

V=		2.9.9
DISTNAME=	yakuake-${V}
CATEGORIES=	x11 x11/kde

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://yakuake.kde.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += QtDBus QtGui QtNetwork QtSvg QtXml X11 c kdeui kio
WANTLIB += knewstuff3 knotifyconfig kparts m nepomuk nepomukutils
WANTLIB += pthread soprano

# XXX should use MASTER_SITE_KDE?
MASTER_SITES=	${MASTER_SITE_KDE:=/stable/yakuake/${V}/src/}
EXTRACT_SUFX=	.tar.xz

MODULES=	devel/gettext \
		x11/kde4

RUN_DEPENDS=	devel/desktop-file-utils \
		x11/gtk+3,-guic

# for konsole4-part
RUN_DEPENDS+=	x11/kde4/konsole

LIB_DEPENDS=	x11/kde4/libs

.include <bsd.port.mk>
