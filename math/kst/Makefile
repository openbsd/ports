# $OpenBSD: Makefile,v 1.41 2020/02/26 16:36:20 rsadowski Exp $

COMMENT=	data viewing/plotting tool

GH_ACCOUNT =	Kst-plot
GH_PROJECT =	kst
GH_TAGNAME =	v2.0.8
REVISION =	5

SHARED_LIBS +=  kst2core                  0.0 # 2.0
SHARED_LIBS +=  kst2math                  0.0 # 2.0
SHARED_LIBS +=  kst2widgets               0.0 # 2.0

CATEGORIES=	math

HOMEPAGE=	https://kst-plot.kde.org/

MAINTAINER=	KDE porting team <openbsd-kde@googlegroups.com>

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Gui Qt5Network Qt5PrintSupport
WANTLIB += Qt5Widgets Qt5Xml c m

MODULES=	devel/cmake \
		x11/qt5

RUN_DEPENDS +=	devel/desktop-file-utils \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-Dkst_release=ON \
			-Dkst_release=2 \
			-Dkst_version_string=${GH_TAGNAME:S/^v//} \
			-Dkst_pch=OFF \
			-Dkst_qt5base_only=ON \
			-Dkst_3rdparty=OFF \
			-Dkst_dataobjects=OFF \
			-Dkst_test=OFF \
			-Dkst_qt5=ON \
			-Dkst_qt4=OFF \
			-Dkst_install_prefix=${LOCALBASE}

# Mix between Qt4 and qt5 depends
NO_TEST =	Yes

.include <bsd.port.mk>

.if ${PROPERTIES:Mclang}
CONFIGURE_ARGS +=	-Dkst_clang=ON
.endif

