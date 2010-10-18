# $OpenBSD: Makefile,v 1.22 2010/10/18 18:36:56 espie Exp $
# $FreeBSD: ports/net/pchar/Makefile,v 1.1.1.1 1999/11/04 08:33:26 obrien Exp $

COMMENT=	Sandia Internet path characterization tool

DISTNAME=	pchar-1.5
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap stdc++ 

HOMEPAGE=	http://www.kitchenlab.org/www/bmah/Software/pchar/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ipv6 --with-pcap

USE_GROFF =	Yes
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	@/usr/bin/perl -pi.orig -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar

.include <bsd.port.mk>
