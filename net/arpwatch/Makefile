# $OpenBSD: Makefile,v 1.51 2019/07/12 20:47:59 sthen Exp $

COMMENT=	monitor arp & rarp requests

DISTNAME=	arpwatch-2.1a15
REVISION=	19
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.ee.lbl.gov/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
MAKE_FLAGS+=		ARPDIR=${VARBASE}/arpwatch

# this provides an up-to-date pregenerated ethercodes.dat file
RUN_DEPENDS=	net/arp-scan,-mac

NO_TEST=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/arpwatch
SUBST_VARS +=	VARBASE

pre-build:
	${SUBST_CMD} ${WRKSRC}/arpsnmp.8 ${WRKSRC}/arpwatch.8

do-install:
	@sed -i 's,awk -f ,awk -f ${EXAMPLESDIR}/', ${WRKSRC}/massagevendor
	${INSTALL_PROGRAM} ${WRKSRC}/arpwatch ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/arpsnmp ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/arpwatch.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/arpsnmp.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/*.awk ${EXAMPLESDIR}
	@${INSTALL_DATA} /dev/null ${EXAMPLESDIR}/arp.dat
	@${INSTALL_SCRIPT} ${WRKSRC}/arp2ethers ${EXAMPLESDIR}
	@${INSTALL_SCRIPT} ${WRKSRC}/massagevendor ${EXAMPLESDIR}

.include <bsd.port.mk>
