# $OpenBSD: Makefile,v 1.4 1999/06/22 00:31:38 brad Exp $

DISTNAME=	arpwatch-2.1a4
CATEGORIES=	net
MASTER_SITES=	http://www.Awfulhak.org/arpwatch/ \
		ftp://ftp.ee.lbl.gov/ \
		ftp://ftp.cso.uiuc.edu/pub/security/coast/unix/arpwatch/
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	ports@openbsd.org

HAS_CONFIGURE=	yes
CONFIGURE_ARGS=	--quiet
INSTALL_TARGET=	install install-man

post-install:
	@if [ ! -d ${PREFIX}/arpwatch ]; then \
		${MKDIR} ${PREFIX}/arpwatch; \
		chmod 775 ${PREFIX}/arpwatch; \
		chown root.operator ${PREFIX}/arpwatch;	\
	fi
	@touch ${PREFIX}/arpwatch/arp.dat
	@chmod 644 ${PREFIX}/arpwatch/arp.dat
	@for file in ethercodes.dat d.awk e.awk p.awk; do \
		${INSTALL_DATA} ${WRKSRC}/$$file ${PREFIX}/arpwatch; \
	done
	@${INSTALL_SCRIPT} ${WRKSRC}/arp2ethers ${PREFIX}/arpwatch
	@${INSTALL_SCRIPT} ${FILESDIR}/arpwatch.sh /etc/rc.arpwatch

.include <bsd.port.mk>
