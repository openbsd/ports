# $OpenBSD: Makefile,v 1.12 2007/06/30 21:08:20 rui Exp $

COMMENT=	"tool for manipulating IPv6 addresses"

DISTNAME=	ipv6calc-0.71.0
CATEGORIES=	net
HOMEPAGE=	http://www.deepspace6.net/projects/ipv6calc.html

MAINTAINER=	Rui Reis <rui@rui.cx>

MASTER_SITES=	ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.uni-muenster.de/pub/IPv6/mirrors/ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.nvg.ntnu.no/pub/IPv6/bieringer/ipv6calc/ \
		ftp://ftp3.linux.it/pub/mirrors/IPv6/bieringer/ipv6calc/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
MAKE_FLAGS=	CC="${CC}" COPTS+="${CFLAGS}"

REGRESS_TARGET=	test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6calc/ipv6calc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6logconv/ipv6logconv ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6logstats/ipv6logstats ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6loganon/ipv6loganon ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/man/ipv6calc.8 ${PREFIX}/man/man8/
	${INSTALL_MAN} ${WRKSRC}/man/ipv6logconv.8 ${PREFIX}/man/man8/
	${INSTALL_MAN} ${WRKSRC}/man/ipv6logstats.8 ${PREFIX}/man/man8/
	${INSTALL_MAN} ${WRKSRC}/man/ipv6loganon.8 ${PREFIX}/man/man8/

.include <bsd.port.mk>
