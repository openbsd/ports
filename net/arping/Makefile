# $OpenBSD: Makefile,v 1.37 2013/01/03 13:12:21 benoit Exp $

COMMENT =	ARP level ping utility

DISTNAME =	arping-2.13
CATEGORIES =	net

HOMEPAGE =	http://www.habets.pp.se/synscan/programs.php?prog=ARPing

MAINTAINER =	Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += c m net pcap lib/libnet-1.1/net=11

MASTER_SITES =	http://www.habets.pp.se/synscan/files/ \
		http://www.arcane-labs.net/download/OpenBSD/

LIB_DEPENDS =	net/libnet/1.1

CONFIGURE_STYLE = gnu
CONFIGURE_ENV = CFLAGS="${CFLAGS} -I${LOCALBASE}/include/libnet-1.1 \
		`libnet-config-1.1 --defines`" \
		LIBS="-L${LOCALBASE}/lib/libnet-1.1 -lnet"
USE_GROFF =	Yes

pre-install:
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/arping
		${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/arping

NO_REGRESS =	Yes

.include <bsd.port.mk>
