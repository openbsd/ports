# $OpenBSD: Makefile,v 1.2 2017/07/27 10:05:20 sthen Exp $
# separate port for Qt5 because it's too different from Qt4 case
COMMENT =	Qt Cryptographic Architecture

V =		2.1.3
DISTNAME =	qca-${V}
PKGNAME =	qca-qt5-${V}
CATEGORIES =	security
REVISION =	0

SHARED_LIBS =	qca-qt5		0.0

HOMEPAGE =	https://userbase.kde.org/QCA

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += Qt5Core c m pthread
WANTLIB += ${COMPILER_LIBCXX}

EXTRACT_SUFX =		.tar.xz
MASTER_SITES =		${MASTER_SITE_KDE:=stable/qca/${V}/src/}

MODULES =		devel/cmake \
			x11/qt5

CFLAGS +=		-DOPENSSL_NO_SSL2 \
			-DOPENSSL_NO_SSL3_METHOD

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQCA_MAN_INSTALL_DIR=${LOCALBASE}/man \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DQCA_FEATURE_INSTALL_DIR=${MODQT_LIBDIR}/mkspecs/features \
			-DBUILD_PLUGINS:Bool=OFF \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=ON \
			-DQCA_SUFFIX=qt5 \
			-Dqca_CERTSTORE=/etc/ssl/cert.pem \
			-DQT4_BUILD:Bool=OFF

.include <bsd.port.mk>
