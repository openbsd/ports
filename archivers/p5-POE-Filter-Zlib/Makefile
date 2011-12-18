# $OpenBSD: Makefile,v 1.4 2011/12/18 09:01:19 ajacoutot Exp $

COMMENT=		POE filter wrapped around Compress::Zlib

DISTNAME=		POE-Filter-Zlib-2.02
REVISION=		0
CATEGORIES=		archivers

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/p5-POE

.include <bsd.port.mk>
