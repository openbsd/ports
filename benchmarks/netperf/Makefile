# $OpenBSD: Makefile,v 1.12 2001/03/01 21:55:20 jakob Exp $

DISTNAME=	netperf-2.1pl3
CATEGORIES=	benchmarks net
NEED_VERSION=	1.302

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

MASTER_SITES=	ftp://ftp.cup.hp.com/dist/networking/benchmarks/netperf/ \
		ftp://ftp.cup.hp.com/dist/networking/benchmarks/netperf/archive/ \
		ftp://ftp.sunet.se/pub/network/monitoring/netperf/ \
		ftp://ftp.sunet.se/pub/network/monitoring/netperf/archive/

HOMEPAGE=	http://www.netperf.org/

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	makefile

SHAREDIR=	${PREFIX}/share/netperf
SCRIPTS=	tcp_range_script tcp_stream_script tcp_rr_script \
		udp_stream_script udp_rr_script \
		snapshot_script

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/netperf ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/netserver ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/netperf.man ${PREFIX}/man/man1/netperf.1
	${INSTALL_MAN} ${WRKSRC}/netserver.man ${PREFIX}/man/man1/netserver.1
	${INSTALL_SCRIPT_DIR} ${SHAREDIR}
	@for i in ${SCRIPTS}; do \
		${INSTALL_SCRIPT} ${WRKSRC}/$$i ${SHAREDIR}; \
	done

.include <bsd.port.mk>
