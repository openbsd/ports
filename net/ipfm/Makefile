# $OpenBSD: Makefile,v 1.16 2019/07/12 20:48:28 sthen Exp $

COMMENT =	IP bandwidth analysis tool

DISTNAME =	ipfm-0.11.5
CATEGORIES =	net

HOMEPAGE =	http://robert.cheramy.net/ipfm/

# GPLv2+
PERMIT_PACKAGE =	Yes

WANTLIB =		c pcap

MASTER_SITES =		${HOMEPAGE}archive/
EXTRACT_SUFX =		.tgz

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/source/ipfm ${PREFIX}/sbin
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.conf.5 ${PREFIX}/man/man5
	${INSTALL_MAN} ${WRKBUILD}/doc/ipfm.8 ${PREFIX}/man/man8
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ipfm
	${INSTALL_DATA} ${WRKBUILD}/ipfm.conf.sample \
		${PREFIX}/share/examples/ipfm
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/HISTORY ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/LICENSE ${PREFIX}/share/doc/ipfm
	${INSTALL_DATA} ${WRKDIST}/TODO ${PREFIX}/share/doc/ipfm

.include <bsd.port.mk>
