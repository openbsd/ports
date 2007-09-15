# $OpenBSD: Makefile,v 1.20 2007/09/15 22:36:58 merdely Exp $
# $FreeBSD: ports/net/pchar/Makefile,v 1.1.1.1 1999/11/04 08:33:26 obrien Exp $

COMMENT=	Sandia Internet path characterization tool

V=		1.4
DISTNAME=	pchar-${V}
PKGNAME=	pchar-${V}p2
CATEGORIES=	net

MASTER_SITES=	${HOMEPAGE}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m pcap stdc++ 

HOMEPAGE=	http://www.employees.org/~bmah/Software/pchar/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ipv6 --with-pcap

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/pchar ${PREFIX}/sbin
	@/usr/bin/perl -pi.orig -e 's/pchar 1/pchar 8/g' ${WRKSRC}/pchar.8
	${INSTALL_MAN} ${WRKSRC}/pchar.8 ${PREFIX}/man/man8/pchar.8
.if !defined(NOPORTDOCS)
	@mkdir -p ${PREFIX}/share/doc/pchar
	cd ${WRKSRC} ; ${INSTALL_DATA} README FAQ ${PREFIX}/share/doc/pchar
.endif

.include <bsd.port.mk>
