# $FreeBSD: Makefile,v 1.9 1998/12/02 05:56:01 asami Exp $
# $OpenBSD: Makefile,v 1.3 1999/09/03 16:15:52 angelos Exp $

DISTFILES=	vatsrc-4.0b2.tar.gz
DISTNAME=	vat-4.0b2
CATEGORIES=	mbone
MASTER_SITES=	ftp://ftp.ee.lbl.gov/conferencing/vat/alpha-test/

NEED_VERSION=	1.114

MAINTAINER=	angelos@openbsd.org

GSM_DIR=	${PORTSDIR}/audio/gsm
GSM_WORK=       ${WRKDIRPREFIX}${GSM_DIR}/work/gsm-1.0-pl10

# If configure is changed to look for libgsm.a in ${PREFIX}/lib, then
# we can use this first BUILD_DEPENDS and save some work.
#BUILD_DEPENDS= ${GSM_WORK}/inc/private.h:${GSM_DIR}:patch
BUILD_DEPENDS=  ${GSM_WORK}/lib/libgsm.a:${GSM_DIR}:build
LIB_DEPENDS=	tcl80.1.5:${PORTSDIR}/lang/tcl80 \
		tk80.1.5:${PORTSDIR}/x11/tk80 \
		gsm.1:${GSM_DIR}

USE_X11=	yes
USE_AUTOCONF=   yes
CONFIGURE_ARGS= --with-gsm=${GSM_WORK}

post-install:
	@${STRIP} ${PREFIX}/bin/vat

.include <bsd.port.mk>
