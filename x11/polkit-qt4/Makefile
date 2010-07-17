# $OpenBSD: Makefile,v 1.2 2010/07/17 05:57:27 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	PolicyKit integration for Qt4

V=		0.95.1
DISTNAME=	polkit-qt-1-${V}
PKGNAME=	polkit-qt4-${V}
REVISION=	0

SHARED_LIBS +=  polkit-qt-agent-1         0.0 # 0.95
SHARED_LIBS +=  polkit-qt-core-1          0.0 # 0.95
SHARED_LIBS +=  polkit-qt-gui-1           0.0 # 0.95

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += m stdc++ QtCore QtDBus QtGui QtXml gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 polkit-agent-1
WANTLIB += polkit-gobject-1

MASTER_SITES=	${MASTER_SITE_KDE:=stable/polkit-qt-1/}

MODULES=	devel/gettext \
		devel/cmake \
		x11/qt4

BUILD_DEPENDS=	::x11/kde4/automoc

LIB_DEPENDS=	::sysutils/polkit

CONFIGURE_ARGS=	-DCMAKE_REQUIRED_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_INCLUDE_PATH:STRING="${LOCALBASE}/include" \
		-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
