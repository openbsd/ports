# $OpenBSD: Makefile,v 1.5 2005/04/17 19:36:46 espie Exp $
# Original from: Jorge A. Cortes Montiel <jcortes@bsdcoders.org>

COMMENT=	"easy-to-use, robust, and highly configurable VPN"

VERSION=	1.6.0
DISTNAME=	openvpn-${VERSION}
CATEGORIES=	net security

HOMEPAGE=	http://openvpn.sourceforge.net/

MAINTAINER=	Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto ssl 

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=openvpn/}

LIB_DEPENDS=	lzo::archivers/lzo

SEPARATE_BUILD=	concurrent
USE_GMAKE=	Yes

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
	@perl -pi -e 's,#!/bin/bash,#!/bin/sh,g' ${WRKSRC}/easy-rsa/*
	${INSTALL_DATA_DIR} ${SAMPLES_DIR}/easy-rsa
	${INSTALL_DATA} ${WRKSRC}/sample-config-files/* ${SAMPLES_DIR}/sample-config-files/
	${INSTALL_DATA} ${WRKSRC}/sample-keys/* ${SAMPLES_DIR}/sample-keys/
	${INSTALL_DATA} ${WRKSRC}/sample-scripts/* ${SAMPLES_DIR}/sample-scripts/
	${INSTALL_DATA} ${WRKSRC}/easy-rsa/* ${SAMPLES_DIR}/easy-rsa/

.include <bsd.port.mk>
