# $OpenBSD: Makefile,v 1.9 2003/12/12 18:07:36 pvalchev Exp $

COMMENT=	"tool for manipulating IPv6 addresses"

DISTNAME=	ipv6calc-0.46
CATEGORIES=	net
HOMEPAGE=	http://www.deepspace6.net/projects/ipv6calc.html

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

MASTER_SITES=	ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.uni-muenster.de/pub/IPv6/mirrors/ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.nvg.ntnu.no/pub/IPv6/bieringer/ipv6calc/ \
		ftp://ftp3.linux.it/pub/mirrors/IPv6/bieringer/ipv6calc/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

MAKE_FLAGS=	CC="${CC}" COPTS+="${CFLAGS}"

REGRESS_TARGET=	test

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6calc/ipv6calc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6logconv/ipv6logconv ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6logstats/ipv6logstats ${PREFIX}/bin/

.include <bsd.port.mk>
