# $OpenBSD: Makefile,v 1.24 2010/10/18 18:36:45 espie Exp $

COMMENT=	monitor arp & rarp requests

DISTNAME=	arpwatch-2.1a15
REVISION=	0
CATEGORIES=	net

MASTER_SITES=	ftp://ftp.ee.lbl.gov/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--quiet
MAKE_FLAGS+=		ARPDIR=/var/arpwatch

USE_GROFF =	Yes
NO_REGRESS=	Yes

EXAMPLESDIR=	${PREFIX}/share/examples/arpwatch

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/arpwatch ${PREFIX}/sbin
	${INSTALL_PROGRAM} ${WRKSRC}/arpsnmp ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKSRC}/arpwatch.8 ${PREFIX}/man/man8
	${INSTALL_MAN} ${WRKSRC}/arpsnmp.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${EXAMPLESDIR}
	@for i in ethercodes.dat d.awk e.awk p.awk; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${EXAMPLESDIR}; \
	done
	@${INSTALL_DATA} /dev/null ${EXAMPLESDIR}/arp.dat
	@${INSTALL_SCRIPT} ${WRKSRC}/arp2ethers ${EXAMPLESDIR}

.include <bsd.port.mk>
