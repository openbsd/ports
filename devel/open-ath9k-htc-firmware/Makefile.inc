# $OpenBSD: Makefile.inc,v 1.2 2019/07/13 10:59:26 sthen Exp $

PKGNAME ?=	open-ath9k-htc-firmware-${ATH9K_FIRMWARE}-1.4.0pl20171105
DISTNAME ?=	${GH_PROJECT}-${GH_COMMIT}

GH_ACCOUNT ?=	qca
GH_PROJECT ?=	open-ath9k-htc-firmware
GH_COMMIT ?=	d19607454d656cb14d8c16dfbf161eebb542e8fe

CATEGORIES =	devel

# ISC/MIT/BSD, but with GPLv2 components
PERMIT_PACKAGE ?=	Yes

MODULES ?=		devel/cmake
BUILD_DEPENDS ?=	devel/xtensa-elf/gcc

CONFIGURE_ARGS +=	-DCMAKE_SYSTEM_NAME=Generic \
			-DCMAKE_C_COMPILER=xtensa-elf-gcc

WRKSRC ?=		${WRKDIST}/target_firmware

NO_TEST ?=		Yes

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/open-ath9k-htc-firmware
	${INSTALL_DATA} ${WRKBUILD}/*.fw ${PREFIX}/share/open-ath9k-htc-firmware
