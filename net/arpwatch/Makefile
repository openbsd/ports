# $OpenBSD: Makefile,v 1.13 2001/05/06 04:59:55 lebel Exp $

COMMENT=	"monitor arp & rarp requests"

DISTNAME=	arpwatch-2.1a10
CATEGORIES=	net
NEED_VERSION=	1.402
MASTER_SITES=	http://www.Awfulhak.org/arpwatch/ \
		ftp://ftp.ee.lbl.gov/ \
		ftp://ftp.cso.uiuc.edu/pub/security/coast/unix/arpwatch/

MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--quiet
INSTALL_TARGET=	install install-man

post-install:
	${STRIP} ${PREFIX}/sbin/arpwatch
	${STRIP} ${PREFIX}/sbin/arpsnmp
	${INSTALL_DATA_DIR} ${PREFIX}/arpwatch
	@for i in arp.dat ethercodes.dat d.awk e.awk p.awk; do \
		${INSTALL_DATA} ${WRKSRC}/$$i ${PREFIX}/arpwatch; \
	done
	@${INSTALL_SCRIPT} ${WRKSRC}/arp2ethers ${PREFIX}/arpwatch

.include <bsd.port.mk>
