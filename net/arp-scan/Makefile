V=		1.10.0
REVISION-main=	1
DISTNAME=	arp-scan-$V

COMMENT-main=	ARP scanning and fingerprinting tool
PKGNAME-main=	${DISTNAME}

M=		20240404
COMMENT-mac=	MAC address vendor list
PKGNAME-mac=	mac-vendor-$M

CATEGORIES=	net

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

SITES=		https://github.com/royhills/arp-scan/releases/download/$V/
SITES.iab=	https://spacehopper.org/mirrors/
DISTFILES.iab=	oui-iab-$M.tar.xz

# GPLv3+
PERMIT_PACKAGE=	Yes

# uses pledge()
WANTLIB-main=		c pcap
RUN_DEPENDS-main=	${BASE_PKGPATH},-mac

MULTI_PACKAGES=		-main -mac

CONFIGURE_STYLE=	gnu

# for local format-ma script
BUILD_DEPENDS=		textproc/p5-Text-CSV

post-patch:
	mv ${WRKSRC}/ieee-oui.txt ${WRKSRC}/ieee-oui.txt.upstream
	cd ${WRKSRC}; cat ${WRKDIR}/oui-iab/ma-{s,m,l}.csv \
	     ${WRKDIR}/oui-iab/iab.csv | perl ${FILESDIR}/format-ma

post-install:
	mv ${WRKINST}/etc/arp-scan/mac-vendor.txt \
	    ${PREFIX}/share/arp-scan/mac-vendor.txt.dist
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/arpwatch/
	${INSTALL_DATA} ${WRKSRC}/ethercodes.dat \
	    ${PREFIX}/share/examples/arpwatch/ethercodes.dat
	${INSTALL_DATA_DIR} ${PREFIX}/share/mac-vendor/
	${INSTALL_DATA} ${WRKDIR}/oui-iab/*csv ${FILESDIR}/unofficial.csv \
	    ${WRKSRC}/aircrack-oui.txt ${PREFIX}/share/mac-vendor/

# maintainer convenience target to update mac-vendor file from the databases
# http://standards.ieee.org/develop/regauth/oui/
# https://regauth.standards.ieee.org/standards-ra-web/pub/view.html#registries
dist:
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
