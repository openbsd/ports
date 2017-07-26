# $OpenBSD: Makefile,v 1.25 2017/07/26 22:45:29 sthen Exp $

COMMENT-main =	Qt Cryptographic Architecture for Qt4
COMMENT-ossl =	SSL/TLS plugin
COMMENT-gnupg =	GnuPG plugin

VERSION =	2.1.3
DISTNAME =	qca-${VERSION}

PKGNAME-main =	qca-${VERSION}
PKGNAME-ossl =	qca-ossl-${VERSION}
PKGNAME-gnupg =	qca-gnupg-${VERSION}
REVISION-main =	2
REVISION-ossl =	1
REVISION-gnupg =1

CATEGORIES =	security

SHARED_LIBS +=  qca                   3.0 # 2.1

HOMEPAGE =	https://userbase.kde.org/QCA

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += QtCore c m ${COMPILER_LIBCXX}
WANTLIB-ossl += QtCore crypto m qca ssl ${COMPILER_LIBCXX}
WANTLIB-gnupg += QtCore m qca ${COMPILER_LIBCXX}

MASTER_SITES =	${MASTER_SITE_KDE:=stable/qca/${VERSION}/src/}
EXTRACT_SUFX =	.tar.xz

# Plugins: qca-botan qca-cyrus-sasl qca-gcrypt qca-gnupg qca-logger
# qca-nss qca-ossl qca-pkcs11 qca-softstore
MULTI_PACKAGES =	-main -ossl -gnupg

CFLAGS +=		-DOPENSSL_NO_SSL2 \
			-DOPENSSL_NO_SSL3_METHOD

CONFIGURE_ARGS =	-DCMAKE_INSTALL_PREFIX=${LOCALBASE} \
			-DQCA_MAN_INSTALL_DIR=${LOCALBASE}/man \
			-DQCA_BINARY_INSTALL_DIR=${PREFIX}/bin \
			-DBUILD_PLUGINS="ossl;gnupg" \
			-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=ON \
			-Dqca_CERTSTORE=/etc/ssl/cert.pem \
			-DQT4_BUILD:Bool=ON

MODULES =		devel/cmake

LIB_DEPENDS =		x11/qt4

LIB_DEPENDS-ossl +=	${BUILD_PKGPATH},-main
LIB_DEPENDS-gnupg +=	${BUILD_PKGPATH},-main

RUN_DEPENDS-gnupg +=	security/gnupg

.include <bsd.port.mk>
