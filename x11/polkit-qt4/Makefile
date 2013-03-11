# $OpenBSD: Makefile,v 1.11 2013/03/11 11:46:15 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	PolicyKit authentication agent for for Qt4

V=		0.103.0
DISTNAME=	polkit-qt-1-${V}
PKGNAME=	polkit-qt4-${V}

SHARED_LIBS +=  polkit-qt-agent-1         1.0 # 0.99
SHARED_LIBS +=  polkit-qt-core-1          1.0 # 0.99
SHARED_LIBS +=  polkit-qt-gui-1           1.0 # 0.99

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++ QtCore QtDBus QtGui QtXml gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gthread-2.0 polkit-agent-1 polkit-gobject-1

MASTER_SITES=	${MASTER_SITE_KDE:=stable/apps/KDE4.x/admin/}

MODULES=	devel/gettext \
		devel/cmake \
		x11/qt4

BUILD_DEPENDS=	devel/automoc

LIB_DEPENDS=	sysutils/polkit

CONFIGURE_ARGS=	-DCMAKE_REQUIRED_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_INCLUDE_PATH:STRING="${LOCALBASE}/include" \
		-DCMAKE_EXE_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
