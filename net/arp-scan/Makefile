# $OpenBSD: Makefile,v 1.34 2016/07/09 12:05:40 sthen Exp $

COMMENT-main =	ARP scanning and fingerprinting tool
COMMENT-mac =	MAC address vendor list

V =		1.9
DISTNAME =	arp-scan-$V
PKGNAME-main =	${DISTNAME}
REVISION-main =	12

M =		20160709
PKGNAME-mac =	mac-vendor-$M

CATEGORIES =	net

HOMEPAGE =	https://github.com/royhills/arp-scan

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	https://github.com/royhills/arp-scan/releases/download/$V/
MASTER_SITES0 =	https://spacehopper.org/mirrors/

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
	base='http://standards-oui.ieee.org'; \
	f=oui-iab-`date +%Y%m%d`; t=/tmp/$$f/oui-iab; \
	mkdir -p $$t; cd $$t; \
	[ -r iab.csv ] || ftp -o iab.csv $$base/iab/iab.csv; \
	[ -r ma-l.csv ] || ftp -o ma-l.csv $$base/oui/oui.csv; \
	[ -r ma-m.csv ] || ftp -o ma-m.csv $$base/oui28/mam.csv; \
	[ -r ma-s.csv ] || ftp -o ma-s.csv $$base/oui36/oui36.csv; \
	cd ..; tar cjf $$f.tar.bz2 oui-iab; scp $$f.tar.bz2 naiad:mirrors/

.include <bsd.port.mk>
