# $OpenBSD: Makefile,v 1.25 2015/02/16 22:57:11 naddy Exp $

COMMENT=	Sandia Internet path characterization tool

DISTNAME=	pchar-1.5
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m pcap stdc++ 

HOMEPAGE=	http://www.kitchenlab.org/www/bmah/Software/pchar/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ipv6 --with-pcap

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	@/usr/bin/perl -pi.orig -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar

.include <bsd.port.mk>
