# $OpenBSD: Makefile,v 1.20 2014/07/09 22:54:19 sthen Exp $

COMMENT =	ARP scanning and fingerprinting tool
DISTNAME =	arp-scan-1.9
REVISION =	3
CATEGORIES =	net

HOMEPAGE =	http://www.nta-monitor.com/tools-resources/security-tools/arp-scan
MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

MASTER_SITES =	http://www.nta-monitor.com/files/arp-scan/
MASTER_SITES0 =	http://spacehopper.org/mirrors/
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		oui-iab-20140709.tar.bz2:0

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c pcap

CONFIGURE_STYLE =	gnu
BUILD_DEPENDS +=	www/p5-libwww

pre-configure:
	cd ${WRKSRC} && \
	    ./get-iab -f ieee-iab.txt -u file://${WRKDIR}/oui-iab/iab.txt && \
	    ./get-oui -f ieee-oui.txt -u file://${WRKDIR}/oui-iab/oui.txt

post-install:
	cd ${PREFIX}/share/arp-scan; mv mac-vendor.txt mac-vendor.txt.dist

# maintainer convenience target
# update both arp-scan and arpwatch if regen'ing
listing:
	t=`mktemp -d /tmp/oui-iab.XXXXXXXXXX`; \
	    f=oui-iab-`date +%Y%m%d`.tar.bz2; \
	    cd $$t; \
	    mkdir oui-iab; \
	    cd oui-iab; \
	    ftp http://standards.ieee.org/develop/regauth/iab/iab.txt; \
	    ftp http://standards.ieee.org/develop/regauth/oui/oui.txt; \
	    perl -pi -e 's/Oracle Corporation/Sun Microsystems, Inc./' \
		{iab,oui}.txt; \
	    cd ..; \
	    tar cjf $$f oui-iab; \
	    scp $$f naiad:mirrors/

.include <bsd.port.mk>
