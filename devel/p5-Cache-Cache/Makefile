# $OpenBSD: Makefile,v 1.19 2020/07/03 21:44:40 sthen Exp $

COMMENT=	perl cache interface

MODULES=	cpan
PKG_ARCH=	*
DISTNAME =	Cache-Cache-1.08
CATEGORIES=	devel
REVISION =	0

# perl
PERMIT_PACKAGE=	Yes

RUN_DEPENDS=	security/p5-Digest-SHA1>=2.02 \
		devel/p5-IPC-ShareLite>=0.09 \
		devel/p5-Error>=0.15

.include <bsd.port.mk>
