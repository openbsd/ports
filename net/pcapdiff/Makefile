# $OpenBSD: Makefile,v 1.9 2020/12/10 22:02:02 sthen Exp $

COMMENT =		compare pcap dump files

GH_ACCOUNT =		isginf
GH_PROJECT =		pcap-diff
GH_COMMIT =		d4c129e98527f42fbd94362d50608d5286e3f57d
DISTNAME =		pcapdiff-0.20180816

CATEGORIES =		net security

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		net/scapy,python3

NO_TEST =		Yes
NO_BUILD =		Yes
MODPY_ADJ_FILES =	pcap_diff.py
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcapdiff
	${INSTALL_DATA} ${WRKSRC}/[A-Z]* ${PREFIX}/share/doc/pcapdiff/
	${INSTALL_SCRIPT} ${WRKSRC}/pcap_diff.py ${PREFIX}/bin/

.include <bsd.port.mk>
