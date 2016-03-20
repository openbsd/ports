# $OpenBSD: Makefile,v 1.6 2016/03/20 19:56:05 naddy Exp $

COMMENT=		POE filter wrapped around Compress::Zlib

DISTNAME=		POE-Filter-Zlib-2.02
REVISION=		0
CATEGORIES=		archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		cpan
PKG_ARCH=		*

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-POE

.include <bsd.port.mk>
