# $FreeBSD: Makefile,v 1.9 1998/12/02 05:56:01 asami Exp $
# $OpenBSD: Makefile,v 1.20 2001/11/10 15:00:48 espie Exp $

COMMENT=	"Visual Audio Tool, multicast audioconferencing"

DISTNAME=	vatsrc-4.0b2
PKGNAME=	vat-4.0b2
CATEGORIES=	mbone
NEED_VERSION=	1.489
MASTER_SITES=	ftp://ftp.ee.lbl.gov/conferencing/vat/alpha-test/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

GSM_DIR=	audio/gsm

BUILD_DEPENDS=  ::${GSM_DIR}:patch
LIB_DEPENDS=	tcl80.1.5::lang/tcl/8.0 \
		tk80.1.5::x11/tk/8.0 \
		gsm.1::${GSM_DIR}

USE_X11=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS= --with-gsm=${GSM_WORK}
CONFIGURE_ENV= V_LIB_GSM='-L${PREFIX}/lib -lgsm'

CONFIGURE_ARGS+=--without-af

WRKDIST=		${WRKDIR}/${PKGNAME}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/vat ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/vat.1 ${PREFIX}/man/man1

.include <bsd.port.mk>

GSM_WORK!=	cd ${PORTSDIR} && cd ${GSM_DIR} && make show VARNAME=WRKDIST
