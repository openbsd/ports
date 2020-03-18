# $OpenBSD: Makefile,v 1.15 2020/03/18 22:05:41 jca Exp $

# next releases are for qt5
PORTROACH=	ignore:1

COMMENT=	PolicyKit authentication agent for Qt

V=		0.112.0
DISTNAME=	polkit-qt-1-${V}
FULLPKGNAME=	polkit-qt4-${V}
REVISION=	8

SHARED_LIBS +=  polkit-qt-agent-1         2.0 # 0.99
SHARED_LIBS +=  polkit-qt-core-1          2.0 # 0.99
SHARED_LIBS +=  polkit-qt-gui-1           2.0 # 0.99

CATEGORIES=	x11 sysutils

EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	http://techbase.kde.org/Polkit-Qt-1

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} QtDBus QtGui gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 gthread-2.0 m polkit-agent-1 polkit-gobject-1

COMPILER=	base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_KDE:=stable/apps/KDE4.x/admin/}

MODULES=	devel/cmake \
		x11/qt4

BUILD_DEPENDS=	devel/automoc

LIB_DEPENDS=	sysutils/polkit

# polkit(8) almost always needs to know the "active" session
RUN_DEPENDS +=	sysutils/consolekit

CONFIGURE_ARGS= -DCMAKE_SHARED_LINKER_FLAGS:STRING="-L${LOCALBASE}/lib" \
		-DUSE_QT4=Yes

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/PolkitQt-1Config.cmake.in

.include <bsd.port.mk>
