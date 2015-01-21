# $OpenBSD: Makefile,v 1.13 2015/01/21 06:13:47 bentley Exp $

COMMENT=	create symlink from IO handle

MODULES=	cpan
DISTNAME=	PerlIO-via-symlink-0.05
REVISION=	2
CATEGORIES=	devel

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Module-Install

# Don't use the bundled ancient copy of Module::Install.
post-extract:
	rm -fr ${WRKSRC}/inc/

.include <bsd.port.mk>
