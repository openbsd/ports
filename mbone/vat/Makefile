# OpenBSD makefile for:	vat
# Version required:	4.0b2
# Date created:		June 15 1999
# Whom:			Angelos D. Keromytis
#
# $FreeBSD: Makefile,v 1.9 1998/12/02 05:56:01 asami Exp $
# $OpenBSD: Makefile,v 1.1.1.1 1999/08/05 00:45:50 niklas Exp $
#

DISTNAME=	vat-4.0b2
CATEGORIES=	mbone tk80
MASTER_SITES=	ftp://ftp.ee.lbl.gov/conferencing/vat/alpha-test/
DISTFILES=	vatsrc-4.0b2.tar.gz

MAINTAINER=	angelos@openbsd.org

GSM_DIR=	${PORTSDIR}/audio/gsm
GSM_WORK=       ${WRKDIRPREFIX}${GSM_DIR}/work/gsm-1.0-pl10

# If configure is changed to look for libgsm.a in ${PREFIX}/lib, then
# we can use this first BUILD_DEPENDS and save some work.
#BUILD_DEPENDS= ${GSM_WORK}/inc/private.h:${GSM_DIR}:patch
BUILD_DEPENDS=  ${GSM_WORK}/lib/libgsm.a:${GSM_DIR}:build
LIB_DEPENDS=    tk80.1:${PORTSDIR}/x11/tk80 \
                gsm.1:${GSM_DIR}

USE_X_PREFIX=   yes
USE_AUTOCONF=   yes
CONFIGURE_ARGS= --with-gsm=${GSM_WORK}

post-install:
	strip ${PREFIX}/bin/vat

.include <bsd.port.mk>
