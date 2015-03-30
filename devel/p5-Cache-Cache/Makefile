# $OpenBSD: Makefile,v 1.16 2015/03/30 13:39:25 benoit Exp $

COMMENT=	perl cache interface

MODULES=	cpan
DISTNAME =	Cache-Cache-1.08
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=2.02 \
		devel/p5-IPC-ShareLite>=0.09 \
		devel/p5-Error>=0.15

.include <bsd.port.mk>
