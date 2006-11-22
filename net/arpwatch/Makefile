# $OpenBSD: Makefile,v 1.20 2006/11/22 09:40:10 jakob Exp $

COMMENT=	"monitor arp & rarp requests"

DISTNAME=	arpwatch-2.1a15
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
