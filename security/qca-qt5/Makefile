# $OpenBSD: Makefile,v 1.11 2021/09/18 07:52:34 rsadowski Exp $
#
COMMENT =	Qt Cryptographic Architecture

V =		2.3.4
DISTNAME =	qca-${V}
PKGNAME =	qca-qt5-${V}
CATEGORIES =	security

SHARED_LIBS =	qca-qt5		1.0

HOMEPAGE =	https://userbase.kde.org/QCA

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core c crypto m ssl

MASTER_SITES =		${MASTER_SITE_KDE:=stable/qca/${V}/}
EXTRACT_SUFX =		.tar.xz

MODULES =		devel/cmake \
			x11/qt5

CFLAGS +=		-DOPENSSL_NO_SSL2 \
			-DOPENSSL_NO_SSL3_METHOD

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQCA_MAN_INSTALL_DIR=${LOCALBASE}/man \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DQCA_FEATURE_INSTALL_DIR=${MODQT_LIBDIR}/mkspecs/features \
			-DBUILD_PLUGINS="none" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON \
			-DQCA_SUFFIX=qt5 \
			-Dqca_CERTSTORE=/etc/ssl/cert.pem

# Enable plugins (qca checks for "yes")
CONFIGURE_ARGS +=	-DWITH_ossl_PLUGIN=yes

.include <bsd.port.mk>
