# $OpenBSD: Makefile,v 1.26 2021/02/25 22:26:02 sthen Exp $

COMMENT =	module for 3D graph plotting

VERSION =	0.63
DISTNAME =	GD-Graph3d-${VERSION}
REVISION =	1
CATEGORIES =	graphics

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS=	graphics/p5-GD-Graph>=1.30

MODULES=	cpan
PKG_ARCH=	*

FIX_CRLF_FILES=	lib/GD/Graph3d.pm

.include <bsd.port.mk>
