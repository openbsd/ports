# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:13 espie Exp $

COMMENT=	perl cache interface

MODULES=	cpan
DISTNAME=	Cache-Cache-1.06
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=2.02 \
		devel/p5-IPC-ShareLite>=0.09 \
		devel/p5-Error>=0.15

.include <bsd.port.mk>
