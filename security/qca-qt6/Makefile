COMMENT =	Qt Cryptographic Architecture

V =		2.3.8
DISTNAME =	qca-${V}
PKGNAME =	qca-qt6-${V}
CATEGORIES =	security
REVISION =	0

SHARED_LIBS +=  qca-qt6                   0.0 # 0.0

HOMEPAGE =	https://userbase.kde.org/QCA

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt6Core Qt6Core5Compat c crypto
WANTLIB += m ssl

SITES =			${SITE_KDE:=stable/qca/${V}/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			x11/qt6

LIB_DEPENDS =		x11/qt6/qt5compat

CFLAGS +=		-DOPENSSL_NO_SSL2 \
			-DOPENSSL_NO_SSL3_METHOD

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQCA_MAN_INSTALL_DIR=${LOCALBASE}/man \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DQCA_FEATURE_INSTALL_DIR=${MODQT_LIBDIR}/mkspecs/features \
			-DBUILD_PLUGINS="none" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DBUILD_WITH_QT6=ON \
			-DQCA_SUFFIX=qt6 \
			-Dqca_CERTSTORE=/etc/ssl/cert.pem

# Enable plugins (qca checks for "yes")
CONFIGURE_ARGS +=	-DWITH_ossl_PLUGIN=yes

.include <bsd.port.mk>
