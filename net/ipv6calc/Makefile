# $OpenBSD: Makefile,v 1.1.1.1 2002/02/27 01:35:08 naddy Exp $

COMMENT=	"tool for manipulating IPv6 addresses"

DISTNAME=	ipv6calc-0.37
CATEGORIES=	net
NEED_VERSION=	1.504
HOMEPAGE=	http://www.bieringer.de/linux/IPv6/index.html

MAINTAINER=	Vladimir Kotal <vlada@openbsd.cz>
WRKSRC=         ${WRKDIR}/${PKGNAME}

MASTER_SITES=	ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu

MAKE_FLAGS=	CC="${CC}" COPTS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ipv6calc ${PREFIX}/bin/ipv6calc

.include <bsd.port.mk>
