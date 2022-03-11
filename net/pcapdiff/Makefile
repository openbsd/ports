COMMENT =		compare pcap dump files

GH_ACCOUNT =		isginf
GH_PROJECT =		pcap-diff
GH_COMMIT =		d4c129e98527f42fbd94362d50608d5286e3f57d
DISTNAME =		pcapdiff-0.20180816
REVISION =		1

CATEGORIES =		net security

# GPLv3+
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
RUN_DEPENDS =		net/scapy

NO_TEST =		Yes
NO_BUILD =		Yes
MODPY_ADJ_FILES =	pcap_diff.py

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pcapdiff
	${INSTALL_DATA} ${WRKSRC}/[A-Z]* ${PREFIX}/share/doc/pcapdiff/
	${INSTALL_SCRIPT} ${WRKSRC}/pcap_diff.py ${PREFIX}/bin/

.include <bsd.port.mk>
