# $OpenBSD: Makefile,v 1.13 2006/12/15 09:56:14 robert Exp $
# Original from: Jorge A. Cortes Montiel <jcortes@bsdcoders.org>

COMMENT=	"easy-to-use, robust, and highly configurable VPN"

VERSION=	2.0.6
DISTNAME=	openvpn-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net security

HOMEPAGE=	http://openvpn.net/

MAINTAINER=	Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

MASTER_SITES=	${HOMEPAGE}/release/

LIB_DEPENDS=	lzo::archivers/lzo

SEPARATE_BUILD=	concurrent

FAKE=		lib
CONFIGURE_STYLE=gnu
# pthread support is supposed to be unstable on OpenBSD
CONFIGURE_ARGS+=--disable-pthread \
		--with-lzo-headers=${DEPBASE}/include \
		--with-lzo-lib=${DEPBASE}/lib

SAMPLES_DIR=	${PREFIX}/share/examples/openvpn

post-install:
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
