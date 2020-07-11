# $OpenBSD: Makefile,v 1.56 2020/07/11 22:54:36 sthen Exp $

COMMENT-main =	ARP scanning and fingerprinting tool
COMMENT-mac =	MAC address vendor list

V =		1.9
DISTNAME =	arp-scan-$V
PKGNAME-main =	${DISTNAME}
REVISION-main =	14

M =		20200418
PKGNAME-mac =	mac-vendor-$M
REVISION-mac =	0

CATEGORIES =	net

HOMEPAGE =	https://github.com/royhills/arp-scan

MAINTAINER =	Stuart Henderson <stu.ports@spacehopper.org>

MASTER_SITES =	https://github.com/royhills/arp-scan/releases/download/$V/
MASTER_SITES0 =	https://spacehopper.org/mirrors/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		oui-iab-$M.tar.xz:0

# GPLv3+
PERMIT_PACKAGE =	Yes

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
	${INSTALL_DATA} ${WRKDIR}/oui-iab/*csv \
	    ${WRKSRC}/aircrack-oui.txt ${FILESDIR}/unofficial.csv \
	    ${PREFIX}/share/mac-vendor/

# maintainer convenience target to update mac-vendor file from the databases
# http://standards.ieee.org/develop/regauth/oui/
# https://regauth.standards.ieee.org/standards-ra-web/pub/view.html#registries
listing:
	base='http://standards-oui.ieee.org'; \
	f=oui-iab-`date +%Y%m%d`.tar.xz; \
	t=`mktemp -d /tmp/oui-iab.XXXXXXXXXX`; \
	cd $$t; \
	mkdir -p oui-iab; \
	cd oui-iab; \
	[ -r iab.csv ] || ftp -o iab.csv $$base/iab/iab.csv; \
	[ -r ma-l.csv ] || ftp -o ma-l.csv $$base/oui/oui.csv; \
	[ -r ma-m.csv ] || ftp -o ma-m.csv $$base/oui28/mam.csv; \
	[ -r ma-s.csv ] || ftp -o ma-s.csv $$base/oui36/oui36.csv; \
	cd ..; tar cf - oui-iab | xz -T 0 > $$f; scp $$f naiad:mirrors/; \
	rm -r $$t

.include <bsd.port.mk>
