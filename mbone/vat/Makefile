# $FreeBSD: Makefile,v 1.9 1998/12/02 05:56:01 asami Exp $
# $OpenBSD: Makefile,v 1.13 2000/06/06 23:14:18 espie Exp $

DISTNAME=	vatsrc-4.0b2
PKGNAME=	vat-4.0b2
CATEGORIES=	mbone
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.ee.lbl.gov/conferencing/vat/alpha-test/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GSM_DIR=	audio/gsm

# If configure is changed to look for libgsm.a in ${PREFIX}/lib, then
# we can use this first BUILD_DEPENDS and save some work.
#BUILD_DEPENDS= ${GSM_WORK}/inc/private.h::${GSM_DIR}:patch
BUILD_DEPENDS=  ${GSM_WORK}/lib/libgsm.a::${GSM_DIR}:build
LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0 \
		gsm.1::${GSM_DIR}

USE_X11=	Yes
USE_AUTOCONF=   Yes
CONFIGURE_ARGS= --with-gsm=${GSM_WORK}

WRKDIST=		${WRKDIR}/${PKGNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

GSM_WORK!=	cd ${PORTSDIR} && cd ${GSM_DIR} && make show VARNAME=WRKDIST
