# $OpenBSD: Makefile,v 1.14 2017/03/17 08:29:15 sthen Exp $

COMMENT=	portable speedy lossless data compression library

DISTNAME=	lzo-2.10
PKGNAME=	${DISTNAME:S/lzo/lzo2/}
CATEGORIES=	archivers devel
MASTER_SITES=	${HOMEPAGE}download/
SHARED_LIBS +=	lzo2	1.0 # .2.0

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://www.oberhumer.com/opensource/lzo/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-static \
		--docdir=${PREFIX}/share/doc/lzo2/

TEST_TARGET=	test


.include <bsd.port.mk>
