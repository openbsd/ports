# $OpenBSD: Makefile,v 1.22 2006/07/19 13:41:02 steven Exp $

COMMENT=	"Network performance benchmark"

DISTNAME=	netperf-2.3
PKGNAME=	${DISTNAME}p0
CATEGORIES=	benchmarks net

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

#MASTER_SITES=	ftp://ftp.cup.hp.com/dist/networking/benchmarks/netperf/ \
#		ftp://ftp.cup.hp.com/dist/networking/benchmarks/netperf/archive/ \
MASTER_SITES=	ftp://ftp.netperf.org/netperf/archive/ \
		http://ftp.sunet.se/pub/network/monitoring/netperf/ \
		http://ftp.sunet.se/pub/network/monitoring/netperf/archive/

HOMEPAGE=	http://www.netperf.org/netperf/NetperfPage.html

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m

MAKE_FILE=	makefile
MAKE_FLAGS+=	CC="${CC}" CFLAGS='-O -DDEBUG_LOG_FILE="\"/tmp/netperf.debug\"" -DUSE_LOOPER -DDO_DNS'

NO_REGRESS=	Yes

SHAREDIR=	${PREFIX}/share/netperf
SCRIPTS=	arr_script snapshot_script \
		tcp_range_script tcp_rr_script tcp_stream_script \
		udp_rr_script udp_stream_script

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
