# $OpenBSD: Makefile,v 1.12 2014/03/19 08:40:57 jasper Exp $

COMMENT=	create symlink from IO handle

MODULES=	cpan
DISTNAME=	PerlIO-via-symlink-0.05
REVISION=	1
CATEGORIES=	devel

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	devel/p5-Module-Install

# Don't use the bundled ancient copy of Module::Install.
post-extract:
	rm -fr ${WRKSRC}/inc/

.include <bsd.port.mk>
