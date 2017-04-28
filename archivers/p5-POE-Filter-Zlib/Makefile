# $OpenBSD: Makefile,v 1.7 2017/04/28 22:16:53 ajacoutot Exp $

COMMENT=		POE filter wrapped around Compress::Zlib

DISTNAME=		POE-Filter-Zlib-2.04
CATEGORIES=		archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-POE

.include <bsd.port.mk>
