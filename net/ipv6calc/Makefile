# $OpenBSD: Makefile,v 1.17 2011/09/08 09:30:55 sthen Exp $

COMMENT=	tool for manipulating IPv6 addresses

DISTNAME=	ipv6calc-0.90.0
CATEGORIES=	net
HOMEPAGE=	http://www.deepspace6.net/projects/ipv6calc.html

MASTER_SITES=	http://ftp.uni-muenster.de/pub/ipv6/bieringer/software/ipv6calc/ \
		ftp://ftp.bieringer.de/pub/linux/IPv6/ipv6calc/

# GPLv2 only
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

CONFIGURE_STYLE=gnu
USE_GMAKE=	Yes
USE_GROFF=	Yes
MAKE_FLAGS=	DEFAULT_CFLAGS=

REGRESS_TARGET=	test

.include <bsd.port.mk>
