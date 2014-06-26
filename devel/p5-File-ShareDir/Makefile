# $OpenBSD: Makefile,v 1.11 2014/06/26 08:55:51 sthen Exp $

COMMENT=	locate install data per-module

MODULES=	cpan
DISTNAME=	File-ShareDir-1.102
CATEGORIES=	devel

# perl
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Class-Inspector \
		devel/p5-File-ShareDir-Install

.include <bsd.port.mk>
