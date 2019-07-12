# $OpenBSD: Makefile,v 1.8 2019/07/12 20:44:58 sthen Exp $

COMMENT =	import packages into other packages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Import-Into-1.002005
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

CPAN_AUTHOR =	HAARG

# Perl
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime

.include <bsd.port.mk>
