# $OpenBSD: Makefile,v 1.2 2010/11/15 00:22:45 espie Exp $

COMMENT=		POE filter wrapped around Compress::Zlib

DISTNAME=		POE-Filter-Zlib-2.02
CATEGORIES=		archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GROFF=		Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-POE

.include <bsd.port.mk>
