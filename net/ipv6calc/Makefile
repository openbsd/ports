# $OpenBSD: Makefile,v 1.4 2002/08/21 21:52:52 naddy Exp $

COMMENT=	"tool for manipulating IPv6 addresses"

DISTNAME=	ipv6calc-0.43
CATEGORIES=	net
HOMEPAGE=	http://www.bieringer.de/linux/IPv6/index.html

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>

MASTER_SITES=	ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.uni-muenster.de/pub/IPv6/mirrors/ftp.bieringer.de/pub/linux/IPv6/ipv6calc/ \
		ftp://ftp.nvg.ntnu.no/pub/IPv6/bieringer/ipv6calc/ \
		ftp://ftp3.linux.it/pub/mirrors/IPv6/bieringer/ipv6calc/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

MAKE_FLAGS=	CC="${CC}" COPTS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6calc/ipv6calc ${PREFIX}/bin/
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6logconv/ipv6logconv ${PREFIX}/bin/

.include <bsd.port.mk>
