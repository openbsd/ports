# $OpenBSD: Makefile,v 1.6 2017/12/05 16:25:45 espie Exp $

COMMENT =	import packages into other packages

MODULES =	cpan
PKG_ARCH =	*
DISTNAME =	Import-Into-1.002005
CATEGORIES =	devel
FIX_EXTRACT_PERMISSIONS=Yes

CPAN_AUTHOR =	HAARG

MAINTAINER =    Sergey Bronnikov <estetus@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =	devel/p5-Module-Runtime

.include <bsd.port.mk>
