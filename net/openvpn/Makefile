# $OpenBSD: Makefile,v 1.42 2013/03/11 11:35:50 espie Exp $

COMMENT=	easy-to-use, robust, and highly configurable VPN

DISTNAME=	openvpn-2.2.2
REVISION=	1
CATEGORIES=	net security

HOMEPAGE=	http://openvpn.net/

MAINTAINER=	Felix Kronlage <fkr@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto ssl lzo2

MASTER_SITES=	http://swupdate.openvpn.net/community/releases/

LIB_DEPENDS=	archivers/lzo2

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

CONFIGURE_ARGS+= --with-lzo-headers=${DEPBASE}/include \
		--with-lzo-lib=${DEPBASE}/lib \
		--enable-password-save

INCLUDE_DIR=	${PREFIX}/include/openvpn
SAMPLES_DIR=	${PREFIX}/share/examples/openvpn

post-install:
	${INSTALL_DATA_DIR} ${INCLUDE_DIR}
	${INSTALL_DATA} ${WRKSRC}/openvpn-plugin.h \
		${INCLUDE_DIR}/openvpn-plugin.h
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/sample-config-files
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/sample-keys
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/sample-scripts
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/easy-rsa
	@rm -rf ${WRKSRC}/easy-rsa/Windows
	@find ${WRKSRC}/sample-config-files/ -type f \! -name "*.orig" -exec \
		${INSTALL_DATA} {} ${SAMPLES_DIR}/sample-config-files/ \;
	${INSTALL_DATA} ${WRKSRC}/sample-keys/* ${SAMPLES_DIR}/sample-keys/
	${INSTALL_DATA} ${WRKSRC}/sample-scripts/* ${SAMPLES_DIR}/sample-scripts/
	@find ${WRKSRC}/easy-rsa -type f -exec perl -pi -e 's,#!/bin/bash,#!/bin/sh,g' {} \;
	@cp -pR ${WRKSRC}/easy-rsa/* ${SAMPLES_DIR}/easy-rsa/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${SAMPLES_DIR}/easy-rsa/

.include <bsd.port.mk>
