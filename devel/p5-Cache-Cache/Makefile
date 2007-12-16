# $OpenBSD: Makefile,v 1.8 2007/12/16 14:20:41 simon Exp $

COMMENT=	perl cache interface

MODULES=	cpan
DISTNAME=	Cache-Cache-1.05
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	:p5-Digest-SHA1->=2.02:security/p5-Digest-SHA1 \
		:p5-IPC-ShareLite->=0.09:devel/p5-IPC-ShareLite \
		:p5-Error->=0.15:devel/p5-Error

.include <bsd.port.mk>
