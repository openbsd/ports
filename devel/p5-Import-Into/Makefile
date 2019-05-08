# $OpenBSD: Makefile,v 1.7 2019/05/08 21:36:07 danj Exp $

COMMENT =	import packages into other packages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Import-Into-1.002005
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes
REVISION =	0

CPAN_AUTHOR =	HAARG

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime

.include <bsd.port.mk>
