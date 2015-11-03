# $OpenBSD: Makefile,v 1.27 2015/11/03 16:18:33 sthen Exp $

COMMENT-main =	ARP scanning and fingerprinting tool
COMMENT-mac =	MAC address vendor list
DISTNAME =	arp-scan-1.9
REVISION-main =	11
PKGNAME-main =	${DISTNAME}
CATEGORIES =	net

M =		20151103
PKGNAME-mac =	mac-vendor-$M
REVISION-mac =	0

HOMEPAGE =	http://www.nta-monitor.com/tools-resources/security-tools/arp-scan

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	http://www.nta-monitor.com/files/arp-scan/
MASTER_SITES0 =	http://spacehopper.org/mirrors/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		oui-iab-$M.tar.bz2:0

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB-main =		c pcap
RUN_DEPENDS-main =	${BASE_PKGPATH},-mac

MULTI_PACKAGES =	-main -mac

CONFIGURE_STYLE =	gnu

# for local format-ma script
BUILD_DEPENDS =		textproc/p5-Text-CSV

pre-configure:
	cd ${WRKSRC}; cat ${WRKDIR}/oui-iab/ma-{s,m,l}.csv \
	    ${FILESDIR}/unofficial.csv ${WRKDIR}/oui-iab/iab.csv | \
	    perl ${FILESDIR}/format-ma

post-install:
	cd ${PREFIX}/share/arp-scan; \
	    mv mac-vendor.txt mac-vendor.txt.dist
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arpwatch/
	${INSTALL_DATA} ${WRKSRC}/ethercodes.dat \
	    ${PREFIX}/share/examples/arpwatch/ethercodes.dat
	${INSTALL_DATA_DIR} ${PREFIX}/share/mac-vendor/
	${INSTALL_DATA} ${WRKDIR}/oui-iab/*csv ${FILESDIR}/unofficial.csv \
	    ${PREFIX}/share/mac-vendor/

# maintainer convenience target to update mac-vendor file from the databases
# http://standards.ieee.org/develop/regauth/oui/
# https://regauth.standards.ieee.org/standards-ra-web/pub/view.html#registries
#
# XXX should use mktemp, but the fetches are too flaky at the moment
listing:
	base='https://services13.ieee.org/RST/standards-ra-web/rest/assignments/download/'; \
	f=oui-iab-`date +%Y%m%d`; t=/tmp/$$f/oui-iab; \
	mkdir -p $$t; cd $$t; \
	[ -r iab.csv ] || ftp -o iab.csv $$base?registry=IAB; \
	[ -r ma-l.csv ] || ftp -o ma-l.csv $$base?registry=MA-L; \
	[ -r ma-m.csv ] || ftp -o ma-m.csv $$base?registry=MA-M; \
	[ -r ma-s.csv ] || ftp -o ma-s.csv $$base?registry=MA-S; \
	cd ..; tar cjf $$f.tar.bz2 oui-iab; scp $$f.tar.bz2 naiad:mirrors/

.include <bsd.port.mk>
