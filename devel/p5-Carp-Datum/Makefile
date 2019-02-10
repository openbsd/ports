# $OpenBSD: Makefile,v 1.16 2019/02/10 16:49:32 cwen Exp $

COMMENT=	debugging and tracing ultimate module

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	Carp-Datum-0.1.3
REVISION=	4
CATEGORIES=	devel perl5
FIX_EXTRACT_PERMISSIONS=	Yes

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Getargs-Long>=0.1.3
BUILD_DEPENDS=	${RUN_DEPENDS}

.include <bsd.port.mk>
